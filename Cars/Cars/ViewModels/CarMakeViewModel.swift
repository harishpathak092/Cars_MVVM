//
//  CarMakeViewModel.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation
import UIKit

class CarMakeViewModel {
    var carMake = Bindable<MockMakeModel>()
    
    var isLoading = Bindable<Bool>()
    private var pageNumber = 1
    private var selectedIndexPath = IndexPath(row: 0, section: 0)
    
    var sortedMakes: [MakeResult] {
        return self.carMake.value?.results.sorted(by: { $0.name < $1.name }) ?? []
    }
    
    init() {
        self.fetchData(pageNumber: 1)
    }
    
    func fetchData(pageNumber: Int) {
        if let totalPages = self.carMake.value?.totalPages {
            guard pageNumber <= totalPages else {return}
        }
        
        let url = Network.shared.url(for: .make) + Network.shared.pageNummberAndSize(pageNum: pageNumber)
        
        self.isLoading.value = true
        Network.shared.fetchGenericJSONData(urlString: url) { [weak self] (makeData: MockMakeModel?, error) in
            let makeModel: MockMakeModel?
            do {
                if let err = error {
                    print("Error: \(err.localizedDescription )")
                    makeModel = try load("MockMakeData\(pageNumber).txt")
                } else {
                    makeModel = makeData
                }
                
                if let _ = self?.carMake.value {
                    self?.carMake.value?.results.append(contentsOf: makeModel?.results ?? [])
                } else {
                    self?.carMake.value = makeModel
                }
                self?.carMake.value?.totalPages = makeModel?.totalPages ?? 0
                self?.pageNumber = pageNumber
            }
            catch {
                let error = error as? DataError
                print("Error: \(error?.description() ?? "Some error occured.")")
            }
            
            self?.isLoading.value = false
            
        }
    }
    
    
    func loadNextModels() {
        guard let loading = self.isLoading.value else {return}
        if !loading {
            self.fetchData(pageNumber: self.pageNumber + 1)
        }
    }
    
    func numberOfRows() -> Int {
        return self.sortedMakes.count
    }
    
    func makeName(at indexPath: IndexPath) -> String {
        return indexPath.row < numberOfRows() ? self.sortedMakes[indexPath.row].name : "Unknown"
    }
    
    func carMakeNiceName(at indexPath: IndexPath) -> String {
        return indexPath.row < numberOfRows() ? self.sortedMakes[indexPath.row].niceName : "Unknown"
    }
    
    func carModelViewModel(for indexPath: IndexPath) -> CarModelViewModel {
        selectedIndexPath = indexPath
        let carModelVM = CarModelViewModel(modelDependency: self)
        return carModelVM
    }
}

extension CarMakeViewModel: ModelDependency {
    func carMakeNiceName() -> String {
        self.carMakeNiceName(at: selectedIndexPath)
    }
}
