import Foundation

// Create a class "Character"

class Character {
    var name: String
    var type: Type
    var life: Int
    var weapon: Weapon
    var gender: Gender
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
    
    func giveDamage(target: Character) {
        target.life -= self.weapon.damage
        
        if target.life <= 0 {
            print("\nNow, your character is dead, you can't use it anymore !")
        } else {
            print("\nNow, the life of this character is : \(target.life) points of life.")
        }
    }
        
    func giveRepair(target: Character) {
        target.life += self.weapon.repair
            
        if target.life <= 0 {
            print("\nNow, your character is dead, you can't use it anymore !")
        } else {
            print("\nNow, the life of this character is : \(target.life) points of life.")
        }
    }
}
