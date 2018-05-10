//
//  ViewControllerUiTest.swift
//  FizzBuzzUITests
//
//  Created by tondutchie on BE2561/04/16.
//  Copyright © 2561年 tondutchie. All rights reserved.
//

import XCTest

class ViewControllerUiTest: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
 
        super.tearDown()
    }

    func testTapNumberButtonIncrementsScore(){
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
        snapshot("testTapNumberButtonIncrementsScore")
    }
    
    func testTapNumberButtonTwiceIncrementsScoreTo2() {
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
        snapshot("testTapNumberButtonTwiceIncrementsScoreTo2")
    }
    
    func testTapFizzButtonIncrementTo3() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
        snapshot("testTapFizzButtonIncrementTo3")
    }
    
    func testTapBuzzButtonIncrementTo5() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
        snapshot("testTapBuzzButtonIncrementTo5")
    }
    
    func testTapfizzbuzzButtonIncrementTo15() {
        let numberButton = app.buttons["numberButton"]
        let fizzbuzzButton = app.buttons["fizzbuzzButton"]
        
        playTo14()
        fizzbuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    func playTo14() {
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











