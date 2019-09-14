import Foundation

// The warrior is a strong woman who handles weapons well.

class Warrior: Character {
    init(name: String) {
        super.init(name: name, life: 120, weapon: Weapon(name: "Sword", damage: 30, repair: 10), gender: .female, power: .air)
    }
}
