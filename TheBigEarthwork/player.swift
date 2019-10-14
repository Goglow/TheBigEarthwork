import Foundation

// Create a class "Player".
class Player {
    // This number is for identify the player.
    var playerNumber: Int
    // For personalize the game party, the players have their names.
    var playerName: String
    // Player's team.
    var team = [Character]()
    
    init(playerNumber: Int) {
        self.playerNumber = playerNumber
        self.playerName = ""
    }
    // The players introduce themselves in turn.
    func introduceYourSelf() {
        print("\nHello player n°\(playerNumber)! What is your name?")
        if let playerName = readLine() {
            self.playerName = playerName.capitalized
            print("\nIt's ok!")
        }
    }
    // They each create their team and name their characters.
    func createYourTeam() {
        repeat {
            print("\n\(playerName), choose your character n°\(team.count + 1):"
                + "\n0. An enchantress, she starts with 120 points of life."
                + "\n1. A druid, he starts with 110 points of life."
                + "\n2. A warrior, she starts with 120 points of life."
                + "\n3. A ditcher, he starts with 110 points of life.")
            if let choice = readLine() {
                switch choice {
                case "0":
                    print("\nGood choice, she has the power of the fire, give her a name:")
                    // Ask the player to give a name to the chosen character.
                    let name = Character.addName()
                    let character = Enchantress(name: name)
                    team.append(character)
                case "1":
                    print("\nGood choice, he has the power of the water, give him a name:")
                    let name = Character.addName()
                    let character = Druid(name: name)
                    team.append(character)
                case "2":
                    print("\nGood choice, she has the power of the air, give her a name:")
                    let name = Character.addName()
                    let character = Warrior(name: name)
                    team.append(character)
                case "3":
                    print("\nGood choice, he has the power of the earth, give him a name:")
                    let name = Character.addName()
                    let character = Ditcher(name: name)
                    team.append(character)
                default:
                    print("\nThis choice is not possible, please try again!")
                }
            }
        } while(team.count < 3)
    }
    
    func selectCharacter(in team: [Character]) -> Character {
        // Show the list of characters.
        for i in 0..<team.count {
            print("\(i).", team[i].name, "-", team[i].type, "-", team[i].life, "points of life", "-", team[i].weapon.name, "-", team[i].weapon.damage, "points of damage", "-", team[i].weapon.repair, "points of repair")
        }
        if let choiceSelect = readLine() {
           // Check that choiceSelect is an Int.
            if let choiceInt = Int(choiceSelect) {
                // Look if this Int is well understood between 0..<team.count.
                if choiceInt >= 0 && choiceInt < team.count {
                    // We return the character.
                    return team[choiceInt]
                } else {
                    // Number error.
                    print("\nNumber must be between 0 and \(team.count - 1).")
                }
            } else {
            // Print error.
            print("\nI don't understand your choice! Please, try again.")
            }
        }
        return selectCharacter(in: team)
    }
    
    func wantToAttack() -> Bool {
        // Check the character type to see the available actions.
        print("\n\(playerName), choose an action for your character:"
            + "\n0. Attack someone from the opposing team!"
            + "\n1. Treat someone from his team or himself!")
        if let choiceAction = readLine() {
            switch choiceAction {
            case "0":
                print("\nYour character will attack an ennemy character. Choose it, please \(playerName):")
                return true
            case "1":
                print("\nYour character will treat a member of his team or himself. Choose it, please \(playerName):")
                return false
            default:
                print("\nI don't understand your choice. Please try again.")
            }
        }
        return wantToAttack()
    }
}
