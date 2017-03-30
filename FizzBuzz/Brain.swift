//
//  Brain.swift
//  FizzBuzz
//
//  Created by Wayne Rumble on 29/03/2017.
//  Copyright © 2017 Wayne Rumble. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        
        if isDivisibleByFifteen(number: number) {
            
            return .fizzBuzz
        } else if isDivisibleByThree(number: number) {
            
            return .fizz
        } else if isDivisibleByFive(number: number) {
            
            return .buzz
        } else {
            
            return .number
        }
    }
    
    private func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        
        return number % divisor == 0
    }
}
