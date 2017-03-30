//
//  Game.swift
//  FizzBuzz
//
//  Created by Wayne Rumble on 29/03/2017.
//  Copyright © 2017 Wayne Rumble. All rights reserved.
//

import Foundation

class Game {
    
    let brain: Brain
    
    var score: Int
    
    init() {
        
        brain = Brain()
        score = 0
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        
        
        let result = brain.check(number: score + 1)
        
        if result == move {
            
            score += 1
            
            return (true, score)
        } else {
            
            return (false, score)
        }
    }
}
