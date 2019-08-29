//
//  player.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

// Create a class "Player"

class Player {
    // This number is for identify the player (e.g. player1 or player2)
    var playerNumber: Int
    // For personalize the game party, the players have their names
    var playerName: String
    
    init(playerNumber: Int, playerName: String) {
        self.playerNumber = playerNumber
        self.playerName = playerName
    }
    
    func introduceYouSelf() {
        print("What is your name, \(playerNumber)?")
        if let playerName = readLine() {
            self.playerName = playerName
        }
    }
    // Quand le jeu commence, les joueurs se présentent un après l'autre
    
    func introduceYourSelf() {
        let listOfPlayers = [playerNumber: 1, playerNumber: 2]
        for _ in listOfPlayers {
            print("Hello player \(playerNumber)! What is your name?")
            if let playerName = readLine() {
                print("It's ok!")
                self.playerName = playerName
            }
        }
    }
    
    func createYourTeam() {
        
    }
    
    func introduceYourPlayers() {
        
    }
}
