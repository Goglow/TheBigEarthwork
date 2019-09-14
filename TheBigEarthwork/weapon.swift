import Foundation

class Weapon {
    let name: String
    let damage: Int
    let repair: Int
    
    init(name: String, damage: Int, repair: Int) {
        self.name = name
        self.damage = damage
        self.repair = repair
    }
}
