import Foundation

// Create a class "Weapon".
class Weapon {
    // A weapon has a name.
    let name: String
    // It has a number of damage.
    let damage: Int
    // It has a number of repair.
    let repair: Int
    
    init(name: String, damage: Int, repair: Int) {
        self.name = name
        self.damage = damage
        self.repair = repair
    }
}
