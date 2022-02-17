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
        if let indexPath = parameters as? IndexPath {
            modelVC.carModelViewModel = makeVC.carMakeViewModel.carModelViewModel(for: indexPath)
            makeVC.navigationController?.pushViewController(modelVC, animated: true)
        } else {
            print("error while navigating to models")
        }
    }
    
    private func navigateFromModels(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        let detailVC = storyboard.instantiateViewController(withIdentifier: routeID.rawValue) as! DetailViewController
        let modelVC = context as! ModelViewController
        if let indexPath = parameters as? IndexPath {
            detailVC.carDetailViewModel = modelVC.carModelViewModel?.detailViewModel(at: indexPath)
            modelVC.navigationController?.pushViewController(detailVC, animated: true)
        } else {
            print("error while navigating to details")
        }
    }
    
    private func navigateFromDetails(to routeID: RouteID, from context: UIViewController, parameters: Any?) {
        let previewVC = storyboard.instantiateViewController(withIdentifier: routeID.rawValue) as! PreviewViewController
        let detailVC = context as! DetailViewController
        if let exterior = parameters as? Bool {
            let previewViewModel = detailVC.carDetailViewModel?.previewViewModel(for: exterior)
            previewVC.previewViewModel = previewViewModel
            detailVC.navigationController?.pushViewController(previewVC, animated: true)
            
        } else {
            print("error while navigating to preview")
        }
    }
    
}

