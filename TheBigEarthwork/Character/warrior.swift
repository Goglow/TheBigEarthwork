import Foundation

// The warrior is a strong woman who handles weapons well.

class Warrior: Character {
    init(name: String) {
        super.init(name: name, life: 120, weapon: Weapon(name: "Sword", damage: 30, repair: 10), gender: .female, power: .air)
    }
    
    func giveDamage(target: Character) {
        target.life -= self.weapon.damage
        
        if life <= 0 {
            print("Your character is dead, you can't use it anymore !")
        } else {
            print("Now, the life of your character is : \(life) points.")
        }
    }
    
    func giveRepair(target: Character) {
        target.life += self.weapon.repair
        
        if life <= 0 {
            print("Your character is dead, you can't use it anymore !")
        } else {
            print("Now, the life of your character is : \(life) points.")
        }
    }
}
