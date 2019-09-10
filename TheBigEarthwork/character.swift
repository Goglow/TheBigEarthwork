import Foundation

// Create a class "Character"

class Character {
    var name: String
    var life: Int
    var arm: Arm
    var gender: Gender
    var power: Power
    
    static var names = [String]()
    
    init(name: String, life: Int, arm: Arm, gender: Gender, power: Power) {
        self.name = name
        self.life = life
        self.arm = arm
        self.gender = gender
        self.power = power
    }
    
    static func addName() -> String {
        if let name = readLine() {
            if !Character.names.contains(name.uppercased()) {
                Character.names.append(name.uppercased())
                return name
            } else {
                print("Ce nom est déjà pris")
            }
        }
        return addName()
    }
    
/*    func giveDamage(target: Character, damage: Int) {
        life -= damage
        
        if life <= 0 {
            print("Votre personnage est mort ! Vous ne pouvez plus l'utiliser !")
                // team.remove(character)
        } else {
            print("Le niveau de vie de votre personnage est de \(life)")
        }
    }
    
    func giveRepair(target: Character, repair: Int) {
        life += repair
    } */
}
