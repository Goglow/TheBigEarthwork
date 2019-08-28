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
    init(characterName: String) {
        super.init(characterName: characterName, gender: .male, life: 110, arm: Potion())
    }
}
