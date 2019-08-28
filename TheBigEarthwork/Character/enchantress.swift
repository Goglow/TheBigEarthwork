//
//  enchantress.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

// The enchantress is a woman whose power is seduction.

class Enchanteress: Character {
    init(characterName: String) {
        super.init(characterName: characterName, gender: .female, life: 120, arm: Philter())
    }
}
