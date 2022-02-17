//
//  PreviewViewModelTest.swift
//  CarsTests
//
//  Created by Harish Pathak on 15/02/22.
//

import XCTest
@testable import Cars

class DummyPreviewDependency: PreviewDependency {
    func imageUrls() -> [String] {
        return ["url1", "url2", "url3", "url4", "url5"]
    }
}

class PreviewViewModelTest: XCTestCase {
    private let dummyPreviewDependency = DummyPreviewDependency()
    var previewViewModel: PreviewViewModel?
    
    override func setUpWithError() throws {
        previewViewModel = PreviewViewModel(previewDependency: dummyPreviewDependency)
    }

    override func tearDownWithError() throws {
        previewViewModel = nil
    }
    
    func testNextUrl() {
        previewViewModel?.displayedIndex = 2
        XCTAssert(previewViewModel?.nextImageUrl() == "url4", "wrong url fetched")
        previewViewModel?.displayedIndex = 4
        XCTAssert(previewViewModel?.nextImageUrl() == nil, "wrong url fetched")
    }

    func testPreviousUrl() {
        previewViewModel?.displayedIndex = 2
        XCTAssert(previewViewModel?.previousImageUrl() == "url2", "wrong url fetched")
        previewViewModel?.displayedIndex = 0
        XCTAssert(previewViewModel?.previousImageUrl() == nil, "wrong url fetched")
    }
    
    func testFirstUrl() {
        XCTAssert(previewViewModel?.firstImageUrl() == "url1", "wrong url fetched")
    }
}
