//
//  SplitoUITests.swift
//  SplitoUITests
//
//  Created by Shahid Latif on 13/04/2022.
//

import XCTest

class SplitoUITests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
     
    }
    
    override func tearDown() {
        XCUIApplication().terminate()
    }
    
    func testExample() throws{
        let app = XCUIApplication()
             app.launch()
        app.buttons["+"].tap()
        XCTAssert(app.staticTexts["3"].exists)
        app.buttons["-"].tap()
        XCTAssert(app.staticTexts["2"].exists)
        XCTAssert(app.staticTexts["Total Per Person"].exists)
        XCTAssert(app.buttons.staticTexts["0 %"].exists)
        XCTAssert(app.buttons.staticTexts["10 %"].exists)
        XCTAssert(app.buttons.staticTexts["15 %"].exists)
        XCTAssert(app.buttons.staticTexts["20 %"].exists)
        app.textFields["Enter bill total"].tap()
        app.keys["5"].tap()
        app.toolbars.buttons["Done"].tap()
        app.buttons.staticTexts["10 %"].tap()
        app.buttons["Calculate"].tap()
        let tip_person = 5/2 + ((5 / 2) * 0.1)
        NSLog(String(format: "%f",tip_person))
//        XCTAssert(app.staticTexts[String(format: "%f", tip_person)].exists)
        XCTAssert(app.staticTexts["2.75"].exists)
        app.buttons.staticTexts["0 %"].tap()
        app.buttons["Calculate"].tap()
        XCTAssert(app.staticTexts["2.50"].exists)
      
       
    }
    
    
    
    // Sample for your first test case.
    func testWhenApplicationDefaultStateWhenApplicationLaunched() throws {
        
    }
}
