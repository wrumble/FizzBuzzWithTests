//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Wayne Rumble on 30/03/2017.
//  Copyright © 2017 Wayne Rumble. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
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
    
    func testTapNumberButtonIncrementsScore() {
        
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        numberButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScoreTwice() {
        
        let numberButton = XCUIApplication().buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "2")
    }
    
    func testFizzButtonIncrementsTo3() {
        
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzButton = XCUIApplication().buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "3")
    }
    
    func testBuzzButtonIncrementsTo5() {
        
        let numberButton = XCUIApplication().buttons["numberButton"]
        let buzzButton = XCUIApplication().buttons["buzzButton"]
        
        playTo4()
        
        buzzButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "5")
    }
    
    func testFizzBuzzButtonIncrementsTo15() {
        
        let numberButton = XCUIApplication().buttons["numberButton"]
        let fizzBuzzButton = XCUIApplication().buttons["fizzBuzzButton"]
        
        playTo14()
        
        fizzBuzzButton.tap()
        
        let newScore = numberButton.label
        
        XCTAssertEqual(newScore, "15")
    }
    
    
    func playTo4() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
    }
    
    
    func playTo14() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
}
