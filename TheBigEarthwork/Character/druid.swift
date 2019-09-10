import Foundation

// The druid is a wise man, the plants have no secrets for him.

class Druid: Character {
    init(name: String) {
        super.init(name: name, life: 120, arm: Potion(), gender: .male, power: .water)
    }
}
