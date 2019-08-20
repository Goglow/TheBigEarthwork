//
//  druid.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

// The druid is a wise man, the plants have no secrets for him.

class Druid: Character {
    var arm = Potion.self
    
    init() {
        super.init(characterName: "Thales", gender: .male, life: 110)
    }
    
    init(name: String) {
        super.init(characterName: name, gender: .male, life: 110)
    }
}
