//
//  CarModelViewModel.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation
import UIKit

protocol ModelDependency {
    func carMakeNiceName() -> String
}

class CarModelViewModel {
    
    var modelDependency: ModelDependency
    
    init(modelDependency: ModelDependency) {
        self.modelDependency = modelDependency
    }
    
    var carModel = Bindable<MockCarModels>()
    var isLoading = Bindable<Bool>()
    var errorFound = Bindable<Bool>()
    private var pageNumber = 1
    private var selectedIndexPath = IndexPath(row: 0, section: 0)
    
    var latestModels: [ModelsResult] {
        return self.carModel.value?.results.filter({ model in
            return model.modelYears.filter({$0.year == 2022}).count > 0
        }) ?? []
    }
    
    func fetchData(pageNumber: Int) {
        if let totalPages = self.carModel.value?.totalPages {
            guard pageNumber <= totalPages, pageNumber > 0 else {return}
        }
        
        let url = Network.shared.url(for: .models) + Network.shared.pageNummberAndSize(pageNum: pageNumber) + "&makeNiceName=\(modelDependency.carMakeNiceName())"
        
        self.isLoading.value = true
        
        Network.shared.fetchGenericJSONData(urlString: url) { [weak self] (modelData: MockCarModels?, error) in
            let carModel: MockCarModels?
            do {
                if let err = error {
                    print("Error: \(err.localizedDescription ) \nMock data will displayed.")
                    carModel = try load("MockModelsData.txt")
                } else {
                    carModel = modelData
                }
                
                if let _ = self?.carModel.value {
                    self?.carModel.value?.results.append(contentsOf: carModel?.results ?? [])
                } else {
                    self?.carModel.value = carModel
                }
                self?.carModel.value?.totalPages = carModel?.totalPages ?? 0
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
        return self.latestModels.count
    }
    
    func modelName(at indexPath: IndexPath) -> String {
        if let model = model(at: indexPath) {
            return model.name
        }
        return ""
    }
    
    func modelNiceName(at indexPath: IndexPath) -> String {
        if let model = model(at: indexPath) {
            return model.niceName
        }
        return ""
    }
    
    func imageURL(at indexPath: IndexPath) -> String {
        if let model = model(at: indexPath) {
            //found no image url, using this key for image
            return model.modelLinkCode
        }
        return ""
    }
    
    func makeNiceName(at indexPath: IndexPath) -> String {
        if let model = model(at: indexPath) {
            return model.makeNiceName
        }
        return ""
    }
    
    func model(at indexPath: IndexPath) -> ModelsResult? {
        return indexPath.row < numberOfRows() ? self.latestModels[indexPath.row] : nil
    }
    
    func navigateToDetails(from viewController: UIViewController, with indexPath:IndexPath) {
        self.selectedIndexPath = indexPath
        Home_Router.shared.route(to: .details, from: viewController, parameters: nil)
    }
}

extension CarModelViewModel : DetailDependency {
    func makeNiceName() -> String {
        self.makeNiceName(at: selectedIndexPath)
    }
    
    func modelNiceName() -> String {
        self.modelNiceName(at: selectedIndexPath)
    }
}
