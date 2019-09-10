import Foundation

// Create a class "Character"

class Character {
    var name: String
    var life: Int
    var weapon: Weapon
    var gender: Gender
    var power: Power
    
    static var names = [String]()
    
    init(name: String, life: Int, weapon: Weapon, gender: Gender, power: Power) {
        self.name = name
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
                print("This name is already taken. Please, choose another name !")
            }
        }
        return addName()
    }
    
    func giveDamage(target: Character) {
        target.life -= self.weapon.damage
        
        if life <= 0 {
            print("Your character is dead, you can't use it anymore !")
//            let character = Character(name: name, life: life, weapon: weapon, gender: gender, power: power)
//            Player.team.remove()
        } else {
            print("Now, the life of your character is : \(life) points.")
        }
    }
    
    func giveRepair(target: Character) {
        target.life += self.weapon.repair
        
        if life <= 0 {
            print("Your character is dead, you can't use it anymore !")
//            let character = Character(name: name, life: life, weapon: weapon, gender: gender, power: power)
//            Player.team.remove()
        } else {
            print("Now, the life of your character is : \(life) points.")
        }
    }
}
