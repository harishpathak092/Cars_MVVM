//
//  DetailsViewModelTest.swift
//  CarsTests
//
//  Created by Harish Pathak on 15/02/22.
//

import XCTest
@testable import Cars

class DummyDetailDependency: DetailDependency {
    func makeNiceName() -> String {
        return "dodge"
    }
    
    func modelNiceName() -> String {
        return "challenger"
    }
}

class DetailsViewModelTest: XCTestCase {
    var detailsViewModel: CarDetailViewModel?
    var dummyDetailDependency = DummyDetailDependency()
    
    override func setUpWithError() throws {
        detailsViewModel = CarDetailViewModel(detailDependency: dummyDetailDependency)
        self.fetchMockData()
    }
    
    override func tearDownWithError() throws {
        detailsViewModel = nil
    }
    
    func testFetchMakeData() {
        let expectationData = expectation(description: "expectation for fetching make data")
        detailsViewModel?.fetchData()
        detailsViewModel?.carModelDetail.bind { car in
            expectationData.fulfill()
        }
        
        waitForExpectations(timeout: 3)
        
        XCTAssertNotNil(detailsViewModel?.carModelDetail, "data not fetched")
    }
    
    func testDetails() {
        XCTAssert(detailsViewModel?.engine == "8 cylinder/gas type", "Wrong details")
        XCTAssert(detailsViewModel?.type == "Coupe", "Wrong details")
        XCTAssert(detailsViewModel?.capacity == 5, "Wrong details")
        XCTAssert(detailsViewModel?.detailDependency.makeNiceName() == "dodge", "Wrong details")
        XCTAssert(detailsViewModel?.detailDependency.modelNiceName() == "challenger", "Wrong details")
    }
    
    func fetchMockData() {
        self.detailsViewModel?.carModelDetail.value = TestUtility.shared.mockedDetailsData()
    }
    

}
