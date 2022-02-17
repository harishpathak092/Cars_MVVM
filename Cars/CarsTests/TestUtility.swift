//
//  TestUtility.swift
//  CarsTests
//
//  Created by Harish Pathak on 15/02/22.
//

import Foundation

class TestUtility {
    static let shared = TestUtility()
    
    func mockedMakeData() -> MockMakeModel? {
        do {
            if let makeData: MockMakeModel? = try load("MockMakeData1.txt") {
                return makeData
            }
        }
        catch {
            let error = error as? DataError
            print("Error: \(error?.description() ?? "Some error occured.")")
        }
        
        return nil
    }
    
    func mockedModelData() -> MockCarModels? {
        do {
            if let modelData: MockCarModels? = try load("MockModelsData.txt") {
                return modelData
            }
        }
        catch {
            let error = error as? DataError
            print("Error: \(error?.description() ?? "Some error occured.")")
        }
        
        return nil
    }
    
    func mockedDetailsData() -> MockDetailModel? {
        do {
            if let modelData: MockDetailModel? = try load("MockDetailData.txt") {
                return modelData
            }
        }
        catch {
            let error = error as? DataError
            print("Error: \(error?.description() ?? "Some error occured.")")
        }
        
        return nil
    }
}
