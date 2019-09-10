import Foundation

// The warrior is a strong woman who handles weapons well.

class Warrior: Character {
    init(name: String) {
        super.init(name: name, life: 110, weapon: Sword(), gender: .female, power: .air)
    }
}
