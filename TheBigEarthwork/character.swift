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
    var arm: Arm
    var life: Int
    var movement: Int
    var position: (X: Int, Y: Int)
    
    init(name: String, arm: Arm, life: Int, movement: Int, position: (Int, Int)) {
        self.name = name
        self.arm = arm
        self.life = life
        self.movement = movement
        self.position = position
    }
}
