import Foundation

struct Chest {
    // Bonus and malus weapons list.
    var chest = [Weapon(name: "Boomerang", damage: 25, repair: 25),
                 Weapon(name: "Mace", damage: 45, repair: 5),
                 Weapon(name: "Soap", damage: 5, repair: 45),
                 Weapon(name: "Bow", damage: 5, repair: 5),
                 Weapon(name: "Slingshot", damage: 5, repair: 5),
                 Weapon(name: "Moonstone", damage: 5, repair: 5)]
    
    // A chest appears randomly with an weapon (bonus or malus) to replace the character's current weapon.
    // A chest appears randomly.
    func chestRandom() -> Weapon? {
        let round = Int(arc4random_uniform(100))
        if round >= 70 {
            print("\nGood job ! You have found a chest !")
            return chestWeapon()
        }
        return nil
    }
    // A weapon is taken at random in the chest.
    private func chestWeapon() -> Weapon {
        print("In this chest, a weapon appears randomly and it is given to your character !")
        let randomIndex = Int(arc4random_uniform(UInt32(chest.count)))
        
        return chest[randomIndex]
    }
}
