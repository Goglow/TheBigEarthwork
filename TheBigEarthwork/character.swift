//
//  character.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Character {
    var characterName: String
    var gender: Gender
    var life: Int
    var arm: Arm
    
    init(characterName: String, gender: Gender, life: Int, arm: Arm) {
        self.characterName = characterName
        self.gender = gender
        self.life = life
        self.arm = arm
    }
}
