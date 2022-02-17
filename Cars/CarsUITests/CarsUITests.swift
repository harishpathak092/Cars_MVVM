//
//  CarsUITests.swift
//  CarsUITests
//
//  Created by Harish Pathak on 15/02/22.
//

import XCTest

class CarsUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNormalAppFlow() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["Show me the cars !!"]/*[[".buttons[\"Show me the cars !!\"].staticTexts[\"Show me the cars !!\"]",".staticTexts[\"Show me the cars !!\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["Makes"].exists, "Makes screen not visible")
        sleep(3)
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Audi"].tap()
        XCTAssert(app.staticTexts["Models"].exists, "Models screen not visible")
        sleep(3)
        tablesQuery.staticTexts["One"].tap()
        XCTAssert(app.staticTexts["Details"].exists, "Details screen not visible")
        sleep(3)
        app/*@START_MENU_TOKEN@*/.staticTexts["Exteriors"]/*[[".buttons[\"Exteriors\"].staticTexts[\"Exteriors\"]",".staticTexts[\"Exteriors\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["Preview"].exists, "Preview screen not visible")
    }
    
    func testNormalAppFlow_API() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app/*@START_MENU_TOKEN@*/.staticTexts["Show me the cars !!"]/*[[".buttons[\"Show me the cars !!\"].staticTexts[\"Show me the cars !!\"]",".staticTexts[\"Show me the cars !!\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["Makes"].exists, "Makes screen not visible")
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Dodge"].tap()
        XCTAssert(app.staticTexts["Models"].exists, "Models screen not visible")
        tablesQuery.staticTexts["Challenger"].tap()
        XCTAssert(app.staticTexts["Details"].exists, "Details screen not visible")
        app/*@START_MENU_TOKEN@*/.staticTexts["Exteriors"]/*[[".buttons[\"Exteriors\"].staticTexts[\"Exteriors\"]",".staticTexts[\"Exteriors\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssert(app.staticTexts["Preview"].exists, "Preview screen not visible")
    }
    
}
