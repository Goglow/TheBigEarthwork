import Foundation

// The enchantress is a woman whose power is seduction.

class Enchanteress: Character {
    init(name: String) {
        super.init(name: name, life: 120, weapon: Philter(), gender: .female, power: .fire)
    }
}
