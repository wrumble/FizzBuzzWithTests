//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Wayne Rumble on 29/03/2017.
//  Copyright © 2017 Wayne Rumble. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    var gameScore: Int? {
        
        didSet {
            
            guard let unwrappedScore = gameScore else {
                
                print("gameScore is nil")
                
                return
            }
            
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        guard let checkedGame = game else {
            
            print("Game is nil")
            
            return
        }
        
        gameScore = checkedGame.score
    }

    func play(move: Move) {
        
        guard let unwrappedGame = game else {
            
            print("game is nil!")
            
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
        case fizzBuzzButton:
            
            play(move: .fizzBuzz)
        default:
            
            print("Invalid selection")
        }
    }
}

