//
//  ViewControllerUnitTest.swift
//  FizzBuzzUITests
//
//  Created by tondutchie on BE2561/04/16.
//  Copyright © 2561年 tondutchie. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTest: XCTestCase {
    
    var viewController : ViewController!
        
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = viewController
        let _ = viewController.view
    }
    
    func testMove1IncrementScores() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScores() {
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
        viewController.play(move: .fizzbuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testFizzMoveIsWrong() {
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
    
    override func tearDown() {
        
        super.tearDown()
    }  
}











