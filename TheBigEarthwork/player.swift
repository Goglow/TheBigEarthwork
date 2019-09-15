import Foundation

// Create a class "Player"

class Player {
// This number is for identify the player.
    var playerNumber: Int
// For personalize the game party, the players have their names.
    var playerName: String
// Player's team
    var team = [Character]()
    
    init(playerNumber: Int) {
        self.playerNumber = playerNumber
        self.playerName = ""
    }
// The players introduce themselves in turn.
    func introduceYourSelf() {
        print("Hello player n°\(playerNumber)! What is your name?")
        if let playerName = readLine() {
            self.playerName = playerName
            print("It's ok!")
        }
    }
// They each create their team and name their characters.
    func createYourTeam() {
        repeat {
            print("Player n°\(playerNumber), choice your character n°\(team.count + 1) :"
                + "\n1. Enchantress"
                + "\n2. Druid"
                + "\n3. Warrior"
                + "\n4. Ditcher")
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("Good choice, she has the power of the fire, give her a name :")
// Ask the player to give a name to the chosen character.
                    let name = Character.addName()
                    let character = Enchanteress(name: name)
                    team.append(character)
                case "2":
                    print("Good choice, he has the power of the water, give him a name :")
                    let name = Character.addName()
                    let character = Druid(name: name)
                    team.append(character)
                case "3":
                    print("Good choice, she has the power of the air, give her a name :")
                    let name = Character.addName()
                    let character = Warrior(name: name)
                    team.append(character)
                case "4":
                    print("Good choice, he has the power of the earth, give him a name :")
                    let name = Character.addName()
                    let character = Ditcher(name: name)
                    team.append(character)
                default:
                    print("This choice is not possible, please try again !")
                }
            }
        } while(team.count < 3)
    }
    
    func selectCharacter() {
        
    }
    
    func play() {
        let choicePlayer = true
        repeat {
            print("Choose an action for your character :"
                + "\n1. Attack"
                + "\n2. Treat")
            if let choicePlayer = readLine() {
                switch choicePlayer {
                case "1":
                    print("Your character attacks")
                case "2":
                    print("Your character treats")
                default:
                    print("I don't understand your choice. Please try again.")
                }
            }
        } while choicePlayer
    }
}
