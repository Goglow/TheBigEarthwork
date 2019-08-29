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
}
