//
//  Utility.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation
import UIKit

enum DataError: Error {
    case fileNotFound
    case fileNotLoaded
    case fileNotParsed
    
    func description() -> String {
        switch self {
        case .fileNotFound:
            return "Couldn't find the data file."
        case .fileNotLoaded:
            return "Couldn't load the data file."
        case .fileNotParsed:
            return "Couldn't parse the data file."
        }
    }
    
}

func load<T: Decodable>(_ filename: String) throws -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            throw DataError.fileNotFound
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        throw DataError.fileNotLoaded
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        throw DataError.fileNotParsed
    }
}

class CarsAlert {
    static let shared = CarsAlert()
    
    func showAlert(title: String,
                   message: String,
                   viewController: UIViewController,
                   action: UIAlertAction) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(action)
        viewController.present(alert, animated: true, completion: nil)
    }
}




