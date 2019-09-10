import Foundation

// Create a class "Player"

class Player {
    // This number is for identify the player
    var playerNumber: Int
    // For personalize the game party, the players have their names
    var playerName: String
    // Player's team
    var team = [Character]()
    
    init(playerNumber: Int) {
        self.playerNumber = playerNumber
        self.playerName = ""
    }
    // Quand le jeu commence, les joueurs se présentent l'un après l'autre
    func introduceYourSelf() {
        print("Hello player n°\(playerNumber)! What is your name?")
        if let playerName = readLine() {
            self.playerName = playerName
            print("It's ok!")
        }
    }
    // Les joueurs créent leur équipe et nomment leurs personnages
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
                    print("Good choice, your character is a female, give her a name :")
                    // Demander au joueur de donner un nom au personnage choisi
                    let name = Character.addName()
                    let character = Enchanteress(name: name)
                    team.append(character)
                case "2":
                    print("Good choice, your character is a male, give him a name :")
                    let name = Character.addName()
                    let character = Druid(name: name)
                    team.append(character)
                case "3":
                    print("Good choice, your character is a female, give her a name :")
                    let name = Character.addName()
                    let character = Warrior(name: name)
                team.append(character)
                case "4":
                    print("Good choice, your character is a male, give him a name :")
                    let name = Character.addName()
                    let character = Ditcher(name: name)
                    team.append(character)
                default:
                    print("This choice is not possible, try again")
                }
            }
        } while(team.count < 3)
        
    }
}
