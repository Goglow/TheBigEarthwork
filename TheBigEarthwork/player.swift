//
//  player.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

class Player {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func input() -> Int {
        let strData = readLine()
        
        return Int(strData!)!
    }
}
