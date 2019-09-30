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
        print("Hello player n°\(playerNumber) ! What is your name ?")
        if let playerName = readLine() {
            self.playerName = playerName
            print("It's ok !")
        }
    }
// They each create their team and name their characters.
    func createYourTeam() {
        repeat {
            print("\(playerName), choose your character n°\(team.count + 1) :"
                + "\n0. An enchantress, she starts with 120 points of life."
                + "\n1. A druid, he starts with 110 points of life."
                + "\n2. A warrior, she starts with 120 points of life."
                + "\n3. A ditcher, he starts with 110 points of life.")
            if let choice = readLine() {
                switch choice {
                case "0":
                    print("Good choice, she has the power of the fire, give her a name :")
// Ask the player to give a name to the chosen character.
                    let name = Character.addName()
                    let character = Enchantress(name: name)
                    team.append(character)
                case "1":
                    print("Good choice, he has the power of the water, give him a name :")
                    let name = Character.addName()
                    let character = Druid(name: name)
                    team.append(character)
                case "2":
                    print("Good choice, she has the power of the air, give her a name :")
                    let name = Character.addName()
                    let character = Warrior(name: name)
                    team.append(character)
                case "3":
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
    
    func selectCharacter(in team: [Character]) -> Character {
        /*Joueur 1 Choisissez votre personnage
        // Afficher la liste des personnages
        1. Toto - Warrior - 100HP - Sword - 20dmg
        2. Pierre - Druid - 100HP - Potion - 5 dmg - 10 care */
        for i in 0..<team.count {
            print("\(i).", team[i].name, "-", team[i].type, "-", team[i].life, "points of life", "-", team[i].weapon.name, "-", team[i].weapon.damage, "points of damage", "-", team[i].weapon.repair, "points of repair")
        }
        if let choiceSelect = readLine() {
            switch choiceSelect {
            case "0":
                print("You choose \(team[0].name).")
                return team[0]
            case "1":
                print("You choose \(team[1].name).")
                return team[1]
            case "2":
                print("You choose \(team[2].name).")
                return team[2]
            default:
                print("I don't understand your choice. Please try again.")
            }
        }
        return selectCharacter(in: team)
    }
    
            // faire for in pour select character !!!! OK!!
    // Trop lourd quand je mets ces infos là : /*+ " - " + team[i].type + " - " + team[i].life + " points of life" + " - " + team[i].weapon.name + " - " + team[i].weapon.damage + " points of damage" + " - " + team[i].weapon.repair + " points of repair"*/
            // Regarder pour le coffre - l'ajouter
            // Que faire avec les pouvoirs
            // Endgame = voir les statistiques 
    
    func wantToAttack() -> Bool {
        /* Vérifier le type de personnage pour voir les actions disponibles
        Vous avez sélectionner Pierre. Voulez-VOUS
        1 - Attaquer
        2 - Soigner */
        print("\(playerName), choose an action for your character :"
            + "\n0. Attack someone from the opposing team !"
            + "\n1. Treat someone from his team or himself !")
        if let choiceAction = readLine() {
            switch choiceAction {
            case "0":
                print("Your character will attack an ennemy character. Choose it, please \(playerName) :")
                return true
            case "1":
                print("Your character will treat a member of his team or himself. Choose it, please \(playerName) :")
                return false
            default:
                print("I don't understand your choice. Please try again.")
            }
        }
        return wantToAttack()
    }
}
