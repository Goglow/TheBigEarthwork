import Foundation

// The ditcher is a man who, as his name indicates, is ruthless.

class Ditcher: Character {
    init(name: String) {
        super.init(name: name, life: 110, weapon: Weapon(name: "Scythe", damage: 50, repair: 0), gender: .male, power: .earth)
    }
    
    func giveDamage(target: Character) {
        target.life -= self.weapon.damage
        
        if life <= 0 {
            print("Your character is dead, you can't use it anymore !")
        } else {
            print("Now, the life of your character is : \(life) points.")
        }
    }
}
