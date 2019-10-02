import Foundation

// Create a class "Game".
class Game {
    var numberOfRounds = 0
    var player1: Player
    var player2: Player
    // Bonus and malus weapons list.
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
    // The players are ready, the game is launched.
    func startGame() {
        // The players introduce themselves in turn.
        player1.introduceYourSelf()
        player2.introduceYourSelf()
        // They each create their team and name their characters.
        player1.createYourTeam()
        player2.createYourTeam()
        // The fight starts. The players attack each other in turn until there is only one team left with one or more players.
        repeat {
        fight(attackingPlayer: player1, defendingPlayer: player2)
            if player2.team.count > 0 {
        fight(attackingPlayer: player2, defendingPlayer: player1)
            }
            numberOfRounds += 1
        } while player1.team.count > 0 && player2.team.count > 0
        endGame()
    }
    // The name of the winner is announced as well as the number of turns and the list of characters with their properties (life point, etc.).
    func endGame() {
        if player1.team.count <= 0 {
            print("The winner is \(player2.playerName) in \(numberOfRounds) rounds ! The remaining players of the team are :")
                for i in 0..<player2.team.count {
                    print("\(i).", player2.team[i].name, "-", player2.team[i].type, "-", player2.team[i].life, "points of life", "-", player2.team[i].weapon.name)
            }
        } else if player2.team.count <= 0 {
            print("The winner is \(player1.playerName) in \(numberOfRounds) rounds ! The remaining players of the team are :")
                for i in 0..<player1.team.count {
                print("\(i).", player1.team[i].name, "-", player1.team[i].type, "-", player1.team[i].life, "points of life", "-", player1.team[i].weapon.name)
            }
        }
    }
    
    func introduction() {
        print("""
*************************************************************************************
*                   The World is in the throes of a merciless war.                  *
*  There are no more good guys, no more bad guys, everyone is fighting endlessly... *
*               A last fight can save the World, and you will lead it.              *
*                           Welcome to The Big EarthWork !                          *
*************************************************************************************

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
                    print("\nLet's go !")
                    self.startGame()
                case "no":
                    print("\nSee you next time !")
                    confirm = false
                default:
                    print("\nI do not understand your choice. Please try again !\n")
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
         //           chestRandom(attacker: attacker)
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
    // A chest appear random with an weapon (bonus or malus) to replace the character's current weapon
    // A chest appear random
    func chestRandom(attacker: Character) {
        let round = Int(arc4random_uniform(100))
        if round >= 70 {
            print("Bravo vous avez trouvé un coffre...")
            _ = chestWeapon(character: attacker)
            replaceWeapon(character: attacker)
        }
    }
    // A weapon is taken at random in the chest.
    func chestWeapon(character: Character) -> Weapon {
        print("Dans ce coffre, une arme apparaît aléatoirement !")
        let randomIndex = Int(arc4random_uniform(UInt32(chest.count)))
        
        return chest[randomIndex]
    }
    // The current weapon of the character is replaced by the one taken in the chest
    func replaceWeapon(character: Character) {
        let newWeapon = chestWeapon(character: character)
        character.weapon = newWeapon
        print("Les nouvelles informations sur ce personnage sont : \(character.name) - \(character.type) - \(character.life) points of life - \(character.weapon.name) - \(character.weapon.damage) points of damage - \(character.weapon.repair) points of repair")
    }
}
