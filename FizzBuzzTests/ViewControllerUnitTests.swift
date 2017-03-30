//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Wayne Rumble on 30/03/2017.
//  Copyright © 2017 Wayne Rumble. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        viewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        
        viewController.play(move: .number)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        
        viewController.play(move: .number)
        viewController.play(move: .number)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        
        viewController.game?.score = 14
        viewController.play(move: .fizzBuzz)
        
        let newScore = viewController.gameScore
        
        XCTAssertEqual(newScore, 15)
    }
}
