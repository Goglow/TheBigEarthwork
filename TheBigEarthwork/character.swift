//
//  character.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var life = 100
    var arm: Arm
    
    init(name: String, arm: Arm) {
        self.name = name
        self.arm = arm
    }
    
    func giveDamage(target: Character, damage: Int) {
        life -= damage
        
        if life <= 0 {
            print("Votre personnage est mort ! Vous ne pouvez plus l'utiliser !")
            //            listOfPlayer1.remove()
        } else {
            print("Le niveau de vie de votre personnage est de \(life)")
        }
    }
    
    func giveRepair(target: Character, repair: Int) {
        life += repair
    }
}
