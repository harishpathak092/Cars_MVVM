//
//  Router.swift
//  Cars
//
//  Created by Harish Pathak on 17/02/22.
//

import Foundation
import UIKit

protocol Router {
    func route(
        to routeID: RouteID,
        from context: UIViewController,
        parameters: Any?
    )
}

enum RouteID: String {
    case make = "MakeViewController"
    case models = "ModelViewController"
    case details = "DetailViewController"
    case preview = "PreviewViewController"
}

class Home_Router: Router {
    static let shared = Home_Router()
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    func route(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        
        switch (routeID) {
        case .make:
            navigateFromHome(to: routeID, from: context, parameters: parameters)
        case .models:
            navigateFromMake(to: routeID, from: context, parameters: parameters)
        case .details:
            navigateFromModels(to: routeID, from: context, parameters: parameters)
        case .preview:
            navigateFromDetails(to: routeID, from: context, parameters: parameters)
        }
        
    }
    
    private func navigateFromHome(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        let makeVC = storyboard.instantiateViewController(withIdentifier: routeID.rawValue) as! MakeViewController
        context.navigationController?.pushViewController(makeVC, animated: true)
    }
    
    private func navigateFromMake(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        let modelVC = storyboard.instantiateViewController(withIdentifier: routeID.rawValue) as! ModelViewController
        let makeVC = context as! MakeViewController
        let carModelVM = CarModelViewModel(modelDependency: makeVC.carMakeViewModel)
        modelVC.carModelViewModel = carModelVM
        makeVC.navigationController?.pushViewController(modelVC, animated: true)
    }
    
    private func navigateFromModels(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        let detailVC = storyboard.instantiateViewController(withIdentifier: routeID.rawValue) as! DetailViewController
        let modelVC = context as! ModelViewController
        let carDetailVM = CarDetailViewModel(detailDependency: modelVC.carModelViewModel!)
        detailVC.carDetailViewModel = carDetailVM
        modelVC.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    private func navigateFromDetails(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        let previewVC = storyboard.instantiateViewController(withIdentifier: routeID.rawValue) as! PreviewViewController
        let detailVC = context as! DetailViewController
        let previewViewModel = PreviewViewModel(previewDependency: detailVC.carDetailViewModel!)
        previewVC.previewViewModel = previewViewModel
        detailVC.navigationController?.pushViewController(previewVC, animated: true)
    }
    
}
