import Foundation

// The ditcher is a man who, as his name indicates, is ruthless.

class Ditcher: Character {
    init(name: String) {
        super.init(name: name, life: 110, weapon: Scythe(), gender: .male, power: .earth)
    }
}
