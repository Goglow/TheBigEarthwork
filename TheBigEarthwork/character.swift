import Foundation

class Character {
    var name: String
    var life = 100
    var arm: Arm
    
    static var names = [String]()
    
    init(name: String, arm: Arm) {
        self.name = name
        self.arm = arm
    }
    
    func giveDamage(target: Character, damage: Int) {
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
}
