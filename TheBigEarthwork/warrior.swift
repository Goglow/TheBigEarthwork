//
//  warrior.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

// The warrior is a strong woman who handles weapons well.

class Warrior: Character {
    var arm = Sword()
    
    init() {
        super.init(characterName: "Anaximene", gender: .female, life: 120)
    }
    
    init(name: String) {
        super.init(characterName: name, gender: .female, life: 120)
    }
}
