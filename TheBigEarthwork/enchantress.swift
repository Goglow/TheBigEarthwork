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
    var arm = Philter.self
    
    init() {
        super.init(characterName: "Empimena", gender: .female, life: 120)
    }
    
    init(name: String) {
        super.init(characterName: name, gender: .female, life: 120)
    }
}
