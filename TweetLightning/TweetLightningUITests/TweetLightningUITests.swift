//
//  TweetLightningUITests.swift
//  TweetLightningUITests
//
//  Created by Nic Wise on 19/11/15.
//  Copyright © 2015 Nic Wise. All rights reserved.
//

import XCTest

class TweetLightningUITests: XCTestCase {
        
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
        
        let app = XCUIApplication()
        let textField = app.otherElements.containingType(.StaticText, identifier:"TL IS ALIVE").childrenMatchingType(.TextField).element
        textField.tap()
        textField.typeText("hello world")
        app.buttons["Press Me"].tap()
        
        let testText = textField.value as! String
        
        let text = "hello world".uppercaseString
        
        assert(text == testText)
        
        
    }
    
}
