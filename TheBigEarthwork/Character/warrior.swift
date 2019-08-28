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
    init(characterName: String) {
        super.init(characterName: characterName, gender: .female, life: 120, arm: Sword())
    }
}
