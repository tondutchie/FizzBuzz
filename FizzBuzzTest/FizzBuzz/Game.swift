//
//  Game.swift
//  FizzBuzz
//
//  Created by tondutchie on 11/4/2561 BE.
//  Copyright © 2561 tondutchie. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else{
            return (false, score)
        }
    }
}
