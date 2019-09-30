import Foundation

// The enchantress is a woman whose power is seduction.

class Enchantress: Character {
    init(name: String) {
        super.init(name: name, type: .Enchantress , life: 120, weapon: Weapon(name: "Philter", damage: 20, repair: 20), gender: .female, power: .fire)
    }
}
