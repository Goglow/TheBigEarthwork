import Foundation

// Create a class "Game"

class Game {
    var numberOfRounds = 0
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
    
    func startGame() {
// The players introduce themselves in turn.
        player1.introduceYourSelf()
        player2.introduceYourSelf()
// They each create their team and name their characters.
        player1.createYourTeam()
        player2.createYourTeam()
// The fight starts
        repeat {
        fight(attackingPlayer: player1, defendingPlayer: player2)
            if player2.team.count > 0 {
        fight(attackingPlayer: player2, defendingPlayer: player1)
            }
            numberOfRounds += 1
        } while player1.team.count > 0 && player2.team.count > 0
        endGame()
    }
    
    func endGame() {
        if player1.team.count <= 0 {
            print("The winner is \(player2.playerName) in \(numberOfRounds) rounds !")
        } else if player2.team.count <= 0 {
            print("The winner is \(player1.playerName) in \(numberOfRounds) rounds !")
        }
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
                    self.startGame()
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
    
    func fight(attackingPlayer: Player, defendingPlayer: Player) {
        print("\(attackingPlayer.playerName), choose a character for play :")
        let attacker = attackingPlayer.selectCharacter(in: attackingPlayer.team)
            // Vérifier si le personnage est un ditcher ou pas
        if let ditcher = attacker as? Ditcher {
            // Si l'attaqueur est un ditcher faire quelque chose
            print("Please, choose a target : ")
            let defenser = attackingPlayer.selectCharacter(in: defendingPlayer.team)
            ditcher.giveDamage(target: defenser)
                if defenser.life <= 0 {
                    let index = defendingPlayer.team.index(where: {$0 === defenser})
                    defendingPlayer.team.remove(at: index!)
                }
        }
        else {
            // D'abord demander au joueur s'il veut attaquer ou défendre
            let attack = attackingPlayer.wantToAttack()
                if attack {
                    let defenser = attackingPlayer.selectCharacter(in: defendingPlayer.team)
                    attacker.giveDamage(target: defenser)
                        if defenser.life <= 0 {
                            let index = defendingPlayer.team.index(where: {$0 === defenser})
                            defendingPlayer.team.remove(at: index!)
                        }
                }
                else {
                    let attacker = attackingPlayer.selectCharacter(in: attackingPlayer.team)
                    attacker.giveRepair(target: attacker)
                }
        }
    }
    // A chest appear random with an weapon (bonus or malus)
    func chestRandom() {
        
    }
    
    func chestWeapon() {
        
    }
}
