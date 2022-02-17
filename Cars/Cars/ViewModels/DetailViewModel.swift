//
//  DetailViewModel.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation

protocol DetailDependency {
    func makeNiceName() -> String
    func modelNiceName() -> String
}

class CarDetailViewModel {
    var detailDependency: DetailDependency
    
    init(detailDependency: DetailDependency) {
        self.detailDependency = detailDependency
    }
    
    var carModelDetail = Bindable<MockDetailModel>()
    var isLoading = Bindable<Bool>()
    var errorFound = Bindable<Bool>()
    private var exteriorImages: Bool = false
    
    
    var makeAndYear: String {
        return "\(self.carDetailsObject()?.name ?? "") \((self.carDetailsObject()?.year) ?? 2022)"
    }
    
    var engine: String {
        return "\(self.carDetailsObject()?.engineCylinder ?? 0) cylinder/\(self.carDetailsObject()?.engineType ?? "NA") type"
    }
    
    var capacity: Int {
        return self.carDetailsObject()?.numberOfSeats ?? 0
    }
    
    var type: String {
        return self.carDetailsObject()?.edTypeCategories.first?.name ?? "NA"
    }
    
    func fetchData() {
        let url = Network.shared.url(for: .details) + Network.shared.pageNummberAndSize(pageNum: 1, pageSize: 1) + "&makeNiceName=\(detailDependency.makeNiceName())&modelNiceName=\(detailDependency.modelNiceName())"
        
        self.isLoading.value = true
        
        Network.shared.fetchGenericJSONData(urlString: url) { [weak self] (modelData: MockDetailModel?, error) in
            let carDetail: MockDetailModel?
            do {
                if let err = error {
                    print("Error: \(err.localizedDescription ) \nMock data will displayed.")
                    carDetail = try load("MockDetailData.txt")
                } else {
                    carDetail = modelData
                }
                
                if let _ = self?.carModelDetail.value {
                    self?.carModelDetail.value?.results.append(contentsOf: carDetail?.results ?? [])
                } else {
                    self?.carModelDetail.value = carDetail
                }
            }
            catch {
                let error = error as? DataError
                print("Error: \(error?.description() ?? "Some error occured.")")
            }
            
            self?.isLoading.value = false
            
        }
    }
    
    func carDetailsObject() -> DetailResult? {
        return self.carModelDetail.value?.results.first ?? nil
    }
    
    func previewViewModel(for exteriorImages: Bool) -> PreviewViewModel {
        self.exteriorImages = exteriorImages
        return PreviewViewModel(previewDependency: self)
    }
}

extension CarDetailViewModel : PreviewDependency {
    func imageUrls() -> [String] {
        //Not able to find images using these two keys as exteroior and interior images in mock data
        return self.exteriorImages ? (self.carDetailsObject()?.categoryValues ?? []) : (self.carDetailsObject()?.niceCategoryValues ?? [])
    }
}

