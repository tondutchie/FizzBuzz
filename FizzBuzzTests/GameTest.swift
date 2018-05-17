//
//  GameTest.swift
//  FizzBuzzTests
//
//  Created by tondutchie on 11/4/2561 BE.
//  Copyright © 2561 tondutchie. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTest: XCTestCase {

    let game = Game()

    override func setUp() {
        super.setUp()

    }
    override func tearDown() {

        super.tearDown()
    }

    func testGameStartAtZero() {
        XCTAssertTrue(game.score == 0)
    }

    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(move: Move.fizzbuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: Move.fizzbuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testNumberMoveRight() {
        game.score = 1
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, true)
    }

    func testNumberMoveWrong() {
        game.score = 2
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
//        let _ = game.play(move: Move.fizz)
        XCTAssertEqual(game.score, 1)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.right)
    }

    func testPlayShouldReturnNewScore() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.score)
    }
}
