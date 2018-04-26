//
//  Brain.swift
//  FizzBuzz
//
//  Created by tondutchie on 11/4/2561 BE.
//  Copyright © 2561 tondutchie. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleBy(divisior: Int, number: Int) -> Bool {
        return number % divisior == 0
    }

    func isDivisibleByThree (number: Int) -> Bool{
        return isDivisibleBy(divisior: 3, number: number)
    }

    func isDivisibleByFive (number: Int) -> Bool {
        return isDivisibleBy(divisior: 5, number: number)
    }

    func isDivisibleByFifteen (number: Int) -> Bool{
        return isDivisibleBy(divisior: 15, number: number)
    }

    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number){
            return .fizzbuzz
        }
        else if isDivisibleByThree(number: number){
            return .fizz
        }
        else if isDivisibleByFive(number: number){
            return .buzz
        }
        else {
            return .number
        }
    }
}
