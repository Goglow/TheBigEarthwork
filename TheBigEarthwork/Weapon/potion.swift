import Foundation

// The weapon of the druid is the magic potion.

class Potion: Weapon {
    init() {
        super.init(damage: 30, repair: 20)
    }
}
