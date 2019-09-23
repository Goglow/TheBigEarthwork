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
            print("\(playerName), choose your character n°\(team.count + 1) :"
                + "\n1. An enchantress, she starts with 120 points of life."
                + "\n2. A druid, he starts with 110 points of life."
                + "\n3. A warrior, she starts with 120 points of life."
                + "\n4. A ditcher, he starts with 110 points of life.")
            if let choice = readLine() {
                switch choice {
                case "1":
                    print("Good choice, she has the power of the fire, give her a name :")
// Ask the player to give a name to the chosen character.
                    let name = Character.addName()
                    let character = Enchantress(name: name)
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
    
    func selectCharacter() -> Character {
        /* Joueur 1 Choisissez votre personnage
         // Afficher la liste des personnages
         1. Toto - Warrior - 100HP - Sword - 20dmg
         2. Pierre - Druid - 100HP - Potion - 5 dmg - 10 care */
            print("\(playerName), choose a character for play :"
                + "\n1. \(team[0].name) - \(team[0].type) - \(team[0].life) points of life - \(team[0].weapon.name) - \(team[0].weapon.damage) points of damage - \(team[0].weapon.repair) points of repair."
                + "\n2. \(team[1].name) - \(team[1].type) - \(team[1].life) points of life - \(team[1].weapon.name) - \(team[1].weapon.damage) points of damage - \(team[1].weapon.repair) points of repair."
                + "\n3. \(team[2].name) - \(team[2].type) - \(team[2].life) points of life - \(team[2].weapon.name) - \(team[2].weapon.damage) points of damage - \(team[2].weapon.repair) points of repair.")
            if let choiceSelect = readLine() {
                switch choiceSelect {
                case "1":
                    print("You choose \(team[0].name).")
                    return team[0]
                case "2":
                    print("You choose \(team[1].name).")
                    return team[1]
                case "3":
                    print("You choose \(team[2].name).")
                    return team[2]
                default:
                    print("I don't understand your choice. Please try again.")
                }
            }
        return selectCharacter()
    }

    func wantToAttack() -> Bool {
        /* Vérifier le type de personnage pour voir les actions disponibles
        Vous avez sélectionner Pierre. Voulez-VOUS
        1 - Attaquer
        2 - Soigner */
            print("\(playerName), choose an action for your character :"
                + "\n1. Attack someone from the opposing team !"
                + "\n2. Treat someone from his team or himself !")
            if let choiceAction = readLine() {
                switch choiceAction {
                case "1":
                    print("Your character will attack an ennemy character. Choose it, please \(playerName) :")
                    return true
                case "2":
                    print("Your character will treat a member of his team or himself. Choose it, please \(playerName) :")
                    return false
                default:
                    print("I don't understand your choice. Please try again.")
                }
            }
        return wantToAttack()
    }
    
    /* Afficher les cibles
    Quel personnage voulez-vous attaquer
    1. Jean - Warrior
    2. Jacques - Nageur
    3. Goldman - Chanteur */
    
    func whoAttack() -> Character {
        print("1. \(team[0].name) - \(team[0].type)."
            + "\n2. \(team[1].name) - \(team[1].type)."
            + "\n3. \(team[2].name) - \(team[2].type).")
        if let choiceWhoAttack = readLine() {
            switch choiceWhoAttack {
            case "1":
                print("You choose \(team[0].name).")
                return team[0]
            case "2":
                print("You choose \(team[1].name).")
                return team[1]
            case "3":
                print("You choose \(team[2].name).")
                return team[2]
            default:
                print("I don't understand your choice. Please try again.")
            }
        }
        return whoAttack()
    }
}
