import Foundation

// Create a class "Enchantress". The enchantress is a woman whose power is seduction. She is on fire!
class Enchantress: Character {
    init(name: String) {
        super.init(name: name, type: .enchantress , life: 120, weapon: Weapon(name: "Philter", damage: 20, repair: 20), gender: .female, power: .fire)
    }
}
