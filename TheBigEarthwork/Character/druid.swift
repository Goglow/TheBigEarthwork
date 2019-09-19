import Foundation

// The druid is a wise man, the plants have no secrets for him.

class Druid: Character {
    init(name: String) {
        super.init(name: name, type: .druid, life: 110, weapon: Weapon(name: "Potion", damage: 5, repair: 45), gender: .male, power: .water)
    }
}
