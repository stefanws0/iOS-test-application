//
//  GameUITests.swift
//  GameUITests
//
//  Created by stefan on 30/11/2017.
//  Copyright © 2017 stefan. All rights reserved.
//

import XCTest

class GameUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        XCUIDevice.shared.orientation = .faceUp
        XCUIDevice.shared.orientation = .faceUp
        XCUIDevice.shared.orientation = .portrait
        
        let app = XCUIApplication()
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element
        element.tap()
        element.tap()
        element.tap()
        
        let helloWorldElement = app.otherElements["Hello, World!"]
        helloWorldElement.tap()
        element.swipeDown()
        helloWorldElement.swipeLeft()
        XCUIDevice.shared.orientation = .faceUp
        XCUIDevice.shared.orientation = .portrait
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
