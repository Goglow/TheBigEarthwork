import Foundation

// Create a class "Warrior". The warrior is a strong woman who handles weapons well. Her sword splits the air !
class Warrior: Character {
    init(name: String) {
        super.init(name: name, type: .warrior, life: 120, weapon: Weapon(name: "Sword", damage: 30, repair: 10), gender: .female, power: .air)
    }
}
