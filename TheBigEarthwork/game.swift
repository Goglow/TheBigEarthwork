import Foundation

// Create a class "Game"

class Game {
    var player1: Player
    var player2: Player
    var chest = [Weapon(name: "Boomerang", damage: 25, repair: 25),
                 Weapon(name: "Mace", damage: 50, repair: 0),
                 Weapon(name: "Soap", damage: 0, repair: 50),
                 Weapon(name: "Bow", damage: 5, repair: 5),
                 Weapon(name: "Slingshot", damage: 10, repair: 0),
                 Weapon(name: "Moonstone", damage: 0, repair: 10)]
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
// The game starts with an introduction and a request for confirmation to the players to start.
    func displayMenu() {
        introduction()
        confirmation()
    }
    
    func start() {
// The players introduce themselves in turn.
        player1.introduceYourSelf()
        player2.introduceYourSelf()
// They each create their team and name their characters.
        player1.createYourTeam()
        player2.createYourTeam()
    }
    
    func introduction() {
        print("""
The World is in the throes of a merciless war. There are no more good guys, no more bad guys, everyone is fighting endlessly... A last fight can save the World, and you will lead it. Welcome to The Big EarthWork !
""")
    }

    func confirmation() {
        var confirm = true
        repeat {
            print("""
A new game will start soon !
Are you ready to start the game ? (yes or no)
""")
            if let choiceAnswer = readLine() {
                switch choiceAnswer {
                case "yes":
                    print("Let's go !")
                    self.start()
                    self.fight()
                case "no":
                    print("See you next time !")
                    confirm = false
                default:
                    print("I do not understand your choice. Please try again !")
                }
            }
        } while confirm
        exit(0)
    }
    
    func fight() {
        player1.selectCharacter()
        player1.play()
        player2.selectCharacter()
        player2.play()
    } 
}

/* func fight() {
        let attackingCharacter = player1.selectCharacter()
        let defendingCharacter = player2.selectCharacter()
     
        let attackingCharacter = player1.team[0]
        let defendingCharacter = player2.team[2]
     
        attackingCharacter.giveDamage(target : defendingCharacter)
     
     Si les personnages ne peuvent que soigner :
     son équipe
     
     Si les personnages ne peuvent qu'attaquer
     l'équipe adverse
     
     Joueur 1 Choisissez votre personnage
     // Afficher la liste des personnages

     1. Toto - Warrior - 100HP - Sword - 20dmg
     2. Pierre - Druid - 100HP - Potion - 5 dmg - 10 care

     // Vérifier le type de personnage pour voir les actions disponibles
     Vous avez sélectionner Pierre. Voulez-VOUS
     1 - Attaquer
     2 - Soigner
     
     // Afficher les cibles
     Quel personnage voulez-vous attaquer
     
     1. Jean - Warrior
     2. Jacques - Nageur
     3. Goldman - Chanteur
     
     
     Veuillez choisir le personnage que vous voulez soigner / attaquer (si la seule possibilité est de : soigner, attaquer)
     
     
     
     // Demander au joueur 1 de choisir un personnage
     
     
     // Vérifier le type de personnage. Combien d'actions peut-il faire?
            // Si plusieurs actions possibles, demander de choisir l'action
     
     // Demander de choisir la cible (dans son équipe pour soin, dans l'équipe adverse pour attaquer)
     
     // Rebelotte mais avec le joueur 2
     
     
     // Rebelotte avec le joeur 1 (je suppose qu'il faudra faire une boucle mais à voir - jusqu'à ce qu'il n'y ait une équipe où il reste 0 joueur)
     
     
    } */
