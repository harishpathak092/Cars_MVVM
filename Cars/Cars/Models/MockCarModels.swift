//
//  MockCarModels.swift
//  Cars
//
//  Created by Harish Pathak on 16/02/22.
//

import Foundation

// MARK: - MockCarModels
struct MockCarModels: Codable {
    let totalNumber: Int
    var totalPages: Int
    var results: [ModelsResult]
}

// MARK: - Result
struct ModelsResult: Codable {
    let id: String
    let makeID: Int
    let makeName, makeNiceName, makeNiceID, name: String
    let niceName, adTargetID, niceID: String
    let modelLinkCode: String
    let make: ModelsMake
    let modelYears: [ModelsYear]
    let attributeGroups: ModelsAttributeGroups
    let categories: ModelsCategories
    let categoryValues, publicationStates: [String]

    enum CodingKeys: String, CodingKey {
        case id
        case makeID = "makeId"
        case makeName, makeNiceName
        case makeNiceID = "makeNiceId"
        case name, niceName
        case adTargetID = "adTargetId"
        case niceID = "niceId"
        case modelLinkCode, make, modelYears, attributeGroups, categories, categoryValues, publicationStates
    }
}

// MARK: - ModelsAttributeGroups
struct ModelsAttributeGroups: Codable {
    let main: ModelsMain

    enum CodingKeys: String, CodingKey {
        case main = "MAIN"
    }
}

// MARK: - ModelsMain
struct ModelsMain: Codable {
    let id: Int
    let name: String
    let properties: ModelsProperties
    let attributes: ModelsAttributes
}

// MARK: - ModelsAttributes
struct ModelsAttributes: Codable {
    let useInNew, epiCategoryID: EpiCategoryID

    enum CodingKeys: String, CodingKey {
        case useInNew = "USE_IN_NEW"
        case epiCategoryID = "EPI_CATEGORY_ID"
    }
}

// MARK: - EpiCategoryID
struct EpiCategoryID: Codable {
    let id: Int
    let name, value: String
}

// MARK: - ModelsProperties
struct ModelsProperties: Codable {
    let useInNew, epiCategoryID: String

    enum CodingKeys: String, CodingKey {
        case useInNew = "USE_IN_NEW"
        case epiCategoryID = "EPI_CATEGORY_ID"
    }
}

// MARK: - ModelsCategories
struct ModelsCategories: Codable {
    let primaryBodyType: [String]

    enum CodingKeys: String, CodingKey {
        case primaryBodyType = "PRIMARY_BODY_TYPE"
    }
}

// MARK: - Make
struct ModelsMake: Codable {
    let id: Int
    let href: String
}

// MARK: - ModelsYear
struct ModelsYear: Codable {
    let id: Int
    let name: String
    let year: Int
    let publicationStates: [String]
    let href: String
}
