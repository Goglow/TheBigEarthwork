import Foundation

class Character {
    var name: String
    var life = 100
    var arm: Arm
    
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
}
