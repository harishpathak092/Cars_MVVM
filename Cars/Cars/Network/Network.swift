//
//  Network.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation

enum Endpoints: String {
    case make = "makes"
    case models = "models"
    case details = "styles"
}

class Network {
    static let shared = Network()
    private let baseUrl: String = "https://api.edmunds.com/api/vehicle/v3/"
    private let api_key: String = ""//add your api key here
    private var api_key_param: String {
        return "?api_key=\(api_key)"
    }
    
    func fetchGenericJSONData<T: Decodable>(urlString: String, completion: @escaping (T?, Error?) -> ()) {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                let objects = try JSONDecoder().decode(T.self, from: data!)
                // success
                completion(objects, nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }
    
    func pageNummberAndSize(pageNum: Int, pageSize: Int = 10) -> String {
        return "&pageNum=\(pageNum)&pageSize=\(pageSize)"
    }
    
    func url(for endpoint: Endpoints) -> String {
        return baseUrl + endpoint.rawValue + api_key_param
    }
}
