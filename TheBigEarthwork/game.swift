//
//  game.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 20/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Game {
    var player1: Player
    var player2: Player
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
    
    func startGame() {
        player1.introduceYourSelf()
        player2.introduceYourSelf()
        player1.createYourTeam()
        player1.introduceYourPlayers()
        player2.createYourTeam()
        player2.introduceYourPlayers()
    }
}

// La partie commence en demandant aux joueurs de se présenter, quand c'est fait. Il leur est alors demandé s'ils sont prêts à commencer la partie !

/* Bonjour \(joueur1), Bonjour \(joueur2),
 
 Etes-vous prêts à démarrer la partie ? (Y, N)
 
 Il est alors temps de composer vos équipes pour démarrer le grand terrassement... Mwouahahaaa
 
 Joueur 1, choisit ton personnage 1,
 
 1 -
 2
 3
 4
 
 tu as choisis : , donnes lui un nom ?
 
 Maintenant, choisit ton personnage 2 ! Donnes lui un nom ?
 
 1-
 2
 3
 4
 
 Ce nom est déjà pris, choisis un autre nom ?
 
 Et ton dernier personnage ? Quel nom ?
 
 1 -
 2
 3
 4
 
 C'est à ton tour de former ton équipe, \(joueur2)
 
 Personnage 1' :
 
 1 -
 2
 3
 4
 
 tu as choisis : , donnes lui un nom ?
 
 Maintenant, choisit ton personnage 2' ! Donnes lui un nom ?
 
 1-
 2
 3
 4
 
 Ce nom est déjà pris, choisis un autre nom ?
 
 Et ton dernier personnage ? Quel nom ?
 
 1 -
 2
 3
 4
 
 Super, la partie peut commencer !!!
 */
