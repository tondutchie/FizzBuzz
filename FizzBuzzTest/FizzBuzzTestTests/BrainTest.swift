//
//  BrainTest.swift
//  FizzBuzzTestTests
//
//  Created by tondutchie on BE2561/04/18.
//  Copyright © 2561年 tdc. All rights reserved.
//

import XCTest
@testable import FizzBuzzTest

class BrainTest: XCTestCase {
    
   let brain = Brain()
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testIfInput1ShouldReturn1() {
       let result = brain.divisibleBy(number: 1)
        XCTAssertEqual(result, "1")
    }
    
    func testIfInput2ShouldReturn2() {
        let result = brain.divisibleBy(number: 2)
        XCTAssertEqual(result, "2")
    }
    
    func testIfInput3ShouldReturnFizz() {
        let result = brain.divisibleBy(number: 3)
        XCTAssertEqual(result, "fizz")
    }
    
    func testIfInput6ShouldReturnFizz() {
        let result = brain.divisibleBy(number: 6)
        XCTAssertEqual(result, "fizz")
    }
    
    func testIfInput7ShouldReturn7() {
        let result = brain.divisibleBy(number: 7)
        XCTAssertEqual(result, "7")
    }
    
    func testIfInput5ShouldReturnBuzz() {
        let result = brain.divisibleBy(number: 5)
        XCTAssertEqual(result, "buzz")
    }
    
    func testIfInput15ShouldReturnFizzBuzz() {
        let result = brain.divisibleBy(number: 15)
        XCTAssertEqual(result, "fizzbuzz")
    }
    
}
