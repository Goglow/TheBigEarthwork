import Foundation

// The enchantress is a woman whose power is seduction.

class Enchanteress: Character {
    init(name: String) {
        super.init(name: name, life: 120, weapon: Weapon(name: "Philter", damage: 20, repair: 20), gender: .female, power: .fire)
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
