import Foundation

// The druid is a wise man, the plants have no secrets for him.

class Druid: Character {
    init(name: String) {
        super.init(name: name, life: 110, weapon: Weapon(name: "Potion", damage: 0, repair: 50), gender: .male, power: .water)
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
