//
//  ModelViewModelTest.swift
//  CarsTests
//
//  Created by Harish Pathak on 15/02/22.
//

import XCTest

class DummyModelDependency: ModelDependency {
    func carMakeNiceName() -> String {
        return "Audi"
    }
}

class ModelViewModelTest: XCTestCase {
    var modelViewModel: CarModelViewModel?
    var dummyModelDependency = DummyModelDependency()
    
    override func setUpWithError() throws {
        modelViewModel = CarModelViewModel(modelDependency: dummyModelDependency)
        self.fetchMockData()
    }
    
    override func tearDownWithError() throws {
        modelViewModel = nil
    }
    
    func testFetchMakeData() {
        let expectationData = expectation(description: "expectation for fetching make data")
        modelViewModel?.fetchData(pageNumber: 1)
        modelViewModel?.carModel.bind { car in
            expectationData.fulfill()
        }
        
        waitForExpectations(timeout: 3)
        
        XCTAssertNotNil(modelViewModel?.carModel, "data not fetched")
    }
    
    func testNumberOfRows() {
        //9 entries for 2022 models
        XCTAssertEqual(self.modelViewModel?.numberOfRows(), 9, "Incorrect number of rows.")
    }
    
    func testNameForModel() {
        XCTAssertTrue(self.modelViewModel?.modelName(at: IndexPath(row: 0, section: 0)) == "One", "Incorrect make name fetched.")
    }
    
    func fetchMockData() {
        self.modelViewModel?.carModel.value = TestUtility.shared.mockedModelData()
    }
    

}
