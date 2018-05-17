//
//  ViewController.swift
//  FizzBuzz
//
//  Created by tondutchie on 11/4/2561 BE.
//  Copyright © 2561 tondutchie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil!")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    var game: Game?
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzbuzzButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        gameScore = 0
        game = Game()
        guard let checkedGame = game else {
            print("Game is nil!")
            return
        }
        gameScore = checkedGame.score
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzbuzzButton:
            play(move: .fizzbuzz)
        default:
            print("Invalid seledtion")
        }
    }
}
