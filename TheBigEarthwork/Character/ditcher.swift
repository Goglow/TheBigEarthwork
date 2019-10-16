import Foundation

// Create a class "Ditcher". The ditcher is a man who, as his name indicates, is ruthless. The earth, he crushes it with one hand!
class Ditcher: Character {
    init(name: String) {
        super.init(name: name, type: .ditcher, life: 110, weapon: Weapon(name: "Scythe", damage: 50, repair: 0), gender: .male, power: .earth)
    }
    // The ditcher can't give repair. He can only give damage.
    override func giveRepair(target: Character) {
        print("I can't give repair but I can give damage!")
    }
}
