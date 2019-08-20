//
//  arm.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Arm {
    var damage: Int
    var repair: Int
    var remote: Bool
    
    init(damage: Int, repair: Int, remote: Bool) {
        self.damage = damage
        self.repair = repair
        self.remote = remote
    }
}
