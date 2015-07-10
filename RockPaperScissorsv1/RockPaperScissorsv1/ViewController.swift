//
//  ViewController.swift
//  RockPaperScissorsv1
//
//  Created by Michael McChesney on 6/29/15.
//  Copyright (c) 2015 Max McChesney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // connect the labels on storyboard to this "view controller"
    @IBOutlet weak var letsPlayLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var gamesPlayedLabel: UILabel!
    

    // declare an empty array called "choices".
    // this code doesn't actually run, so we set the value inside the viewDidLoad function
    // declaring the array outside of a method allows us to access it throughout the app. This is called "scope".
    var choices = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // choices was an empty array, here we're setting it equal to an array with 3 strings in it
        choices = ["Rock","Paper","Scissors"]
        
    }

    // declare a variable, i, that we'll increment in order to cycle through the array
    var i = 0
    
    @IBAction func cycleChoice(sender: AnyObject) {
        
        // change the player's selected choice
        
        if i <= 2 {

            // change the playerLabel text to the option in the choices array at index i.
            playerLabel.text = choices[i] as? String
            
            // increment i by 1 so next time we press the button, we're getting the next item in the array
            i++
            
        } else {
            
            // reset i to 0, change the label, then increment i
            i = 0
            playerLabel.text = choices[i] as? String
            i++
            
        }
        
    }
    
    // declare a variable to increment each time a game is played
    var numberOfGamesPlayed = 0
    
    
    @IBAction func playGame(sender: AnyObject) {
        
        // print the number of items in the array to the console. This doesn't do anything that would affect the user.
        // println is a debugging tool for developers to see what's going on inside the program
        println(choices.count)
        
        // set randomIndex to a random integer between 0 and choices.count
        var randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
    
        // set the cpuLabel text to a random choice from the array
        cpuLabel.text = choices[randomIndex] as? String
        
        // make sure player has made a selection. If not, notify player and "return" or stop
        if playerLabel.text == "You" {
            letsPlayLabel.text = "First pick a choice!"
            return
        }
        
        
        // check for winner with several "if else" statements
        // && is a comparitor
        
        if cpuLabel.text == playerLabel.text {
            
            println("Tie")
            letsPlayLabel.text = "Tie!"
            
        } else if cpuLabel.text == "Rock" && playerLabel.text == "Scissors" {
            
            println("CPU Wins")
            letsPlayLabel.text = "CPU Wins"
            
        } else if cpuLabel.text == "Scissors" && playerLabel.text == "Paper" {
            
            println("CPU Wins")
            letsPlayLabel.text = "CPU Wins"
            
        } else if cpuLabel.text == "Paper" && playerLabel.text == "Rock" {
            
            println("CPU Wins")
            letsPlayLabel.text = "CPU Wins"
            
        } else {
            
            println("Player Wins")
            letsPlayLabel.text = "Player Wins"
        }
        
        
        // don't forget to increment the games played label!

        numberOfGamesPlayed++
        gamesPlayedLabel.text = "Games Played: \(numberOfGamesPlayed)"
        
    }
    


}

