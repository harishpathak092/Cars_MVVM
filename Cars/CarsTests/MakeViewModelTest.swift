//
//  MakeViewModelTest.swift
//  CarsTests
//
//  Created by Harish Pathak on 15/02/22.
//

import XCTest
import Foundation

class MakeViewModelTest: XCTestCase {
    var makeViewModel: CarMakeViewModel?
    
    override func setUpWithError() throws {
        makeViewModel = CarMakeViewModel()
        self.fetchMockData()
    }
    
    override func tearDownWithError() throws {
        makeViewModel = nil
    }
    
    func testFetchMakeData() {
        let expectationData = expectation(description: "expectation for fetching make data")
        makeViewModel?.fetchData(pageNumber: 1)
        makeViewModel?.carMake.bind { car in
            expectationData.fulfill()
        }
        
        waitForExpectations(timeout: 3)
        
        XCTAssertNotNil(makeViewModel?.carMake, "data not fetched")
    }
    
    func testNumberOfRows() {
        XCTAssertEqual(self.makeViewModel?.numberOfRows(), 10, "Incorrect number of rows.")
    }
    
    func testNameForMake() {
        XCTAssertTrue(self.makeViewModel?.makeName(at: IndexPath(row: 0, section: 0)) == "Audi", "Incorrect make name fetched.")
    }
    
    func testCarMakeNiceName() {
        XCTAssertTrue(self.makeViewModel?.carMakeNiceName(at: IndexPath(row: 0, section: 0)) == "Audi", "Incorrect make Id fetched.")
    }
    
    func testModelViewModelForIndexPath() {
        let modelViewModel = self.makeViewModel?.carModelViewModel(for:IndexPath(row: 0, section: 0))
        XCTAssertNotNil(modelViewModel, "ModelViewModel object not created")
    }
    
    func fetchMockData() {
        self.makeViewModel?.carMake.value = TestUtility.shared.mockedMakeData()
    }
    
}
