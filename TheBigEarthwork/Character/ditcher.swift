import Foundation

// The ditcher is a man who, as his name indicates, is ruthless.

class Ditcher: Character {
    init(name: String) {
        super.init(name: name, life: 110, weapon: Weapon(name: "Scythe", damage: 50, repair: 0), gender: .male, power: .earth)
    }
}
