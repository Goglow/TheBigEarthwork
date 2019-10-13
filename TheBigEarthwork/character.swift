import Foundation

// Create a class "Character".
class Character {
    // The character has a name.
    var name: String
    // A type.
    var type: Type
    // Points of life.
    var life: Int
    // A predefined weapon.
    var weapon: Weapon
    // A predefined gender.
    var gender: Gender
    // A predefined power.
    var power: Power
    
    static var names = [String]()
    
    init(name: String, type: Type, life: Int, weapon: Weapon, gender: Gender, power: Power) {
        self.name = name
        self.type = type
        self.life = life
        self.weapon = weapon
        self.gender = gender
        self.power = power
    }
    // The player gives a unique name to his character.
    static func addName() -> String {
        if let name = readLine() {
            if !Character.names.contains(name.uppercased()) {
                Character.names.append(name.uppercased())
                return name
            } else {
                print("\nThis name is already taken. Please, choose another name !")
            }
        }
        return addName()
    }
    // The player may either inflict damage on an opposing team's characters.
    func giveDamage(target: Character) {
        target.life -= self.weapon.damage
        
        if target.life <= 0 {
            print("\nNow, your character is dead, you can't use it anymore !")
        } else {
            print("\nNow, the life of this character is: \(target.life) points of life.")
        }
    }
    // Or heal someone on his team.
    func giveRepair(target: Character) {
        target.life += self.weapon.repair
            
        if target.life <= 0 {
            print("\nNow, your character is dead, you can't use it anymore !")
        } else {
            print("\nNow, the life of this character is: \(target.life) points of life.")
        }
    }
}
