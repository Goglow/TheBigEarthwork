import Foundation

// The druid is a wise man, the plants have no secrets for him.

class Druid: Character {
    init(name: String) {
        super.init(name: name, life: 110, weapon: Weapon(name: "Potion", damage: 30, repair: 20), gender: .male, power: .water)
    }
}
