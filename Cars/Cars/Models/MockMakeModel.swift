//
//  MockMakeModel.swift
//  Cars
//
//  Created by Harish Pathak on 16/02/22.
//

import Foundation

// MARK: - MockMakeModel
struct MockMakeModel: Codable {
    var totalNumber, totalPages: Int
    var results: [MakeResult]
}

// MARK: - MakeResult
struct MakeResult: Codable {
    let id: Int
    let name, niceName, adTargetID, niceID: String
    let useInUsed, useInNew, useInPreProduction, useInFuture: String
    let models: [MakeModel]

    enum CodingKeys: String, CodingKey {
        case id, name, niceName
        case adTargetID = "adTargetId"
        case niceID = "niceId"
        case useInUsed, useInNew, useInPreProduction, useInFuture, models
    }
}

// MARK: - MakeModel
struct MakeModel: Codable {
    let id, name, niceName, href: String
}
