//
//  ditcher.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

// The ditcher is a man who, as his name indicates, is ruthless.

class Ditcher: Character {
    var arm = Scythe()
    
    init() {
        super.init(characterName: "Xenophane", gender: .male, life: 110)
    }
    
    init(name: String) {
        super.init(characterName: name, gender: .male, life: 110)
    }
}
