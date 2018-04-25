//
//  Brain.swift
//  FizzBuzzTest
//
//  Created by tondutchie on BE2561/04/18.
//  Copyright © 2561年 tdc. All rights reserved.
//

import UIKit
import Foundation

class Brain {
    
    func divisibleByThree(number: Int) -> Bool {
        if number % 3 == 0 {
            return true
        }
        return false
    }
    
    func divisibleByFive(number: Int) -> Bool {
        return true
    }
    
    func divisibleBy(number: Int) -> String {
        
//        let divisibleNumber = [15, 3, 5]
//        let answer = ["fizzbuzz", "fizz", "buzz"]
//        print("divisibleNumber.count =  \(divisibleNumber.count)")
//
//        for i in 0..<divisibleNumber.count {
//            if number % divisibleNumber[i] == 0 {
//               return "\(answer[i])"
//            }
//        }
        
        let divisibleNumberDict = ["fizzbuzz": 15, "fizz": 3, "buzz": 5]
        print("divisibleNumberDict count = \(divisibleNumberDict.count)")
        for i in 0..<divisibleNumberDict.count {
            if number % divisibleNumberDict. == 0 {
                print("number = \(number) and say = \(say)")
                return say
            }
        }
       return "\(number)"
        }
    
}
















