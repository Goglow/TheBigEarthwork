import Foundation

// Create a class "Game".
class Game {
    var numberOfRounds = 0
    var player1: Player
    var player2: Player
    // Bonus and malus weapons list.
    var chest = [Weapon(name: "Boomerang", damage: 25, repair: 25),
                 Weapon(name: "Mace", damage: 45, repair: 5),
                 Weapon(name: "Soap", damage: 5, repair: 45),
                 Weapon(name: "Bow", damage: 5, repair: 5),
                 Weapon(name: "Slingshot", damage: 5, repair: 5),
                 Weapon(name: "Moonstone", damage: 5, repair: 5)]
    
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
            print("\nThe winner is \(player2.playerName) in \(numberOfRounds) rounds ! The remaining players of the team are :")
                for i in 0..<player2.team.count {
                    print("\(i).", player2.team[i].name, "-", player2.team[i].type, "-", player2.team[i].life, "points of life", "-", player2.team[i].weapon.name)
            }
        } else if player2.team.count <= 0 {
            print("\nThe winner is \(player1.playerName) in \(numberOfRounds) rounds ! The remaining players of the team are :")
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
        print("\n\(attackingPlayer.playerName), choose a character for play :")
        let attacker = attackingPlayer.selectCharacter(in: attackingPlayer.team)
            // To check is the character is a ditcher or not.
        if let ditcher = attacker as? Ditcher {
            // If the attacker is a ditcher, to attack directly because he can't heal.
            print("\nPlease, choose a target : ")
            let defenser = attackingPlayer.selectCharacter(in: defendingPlayer.team)
            ditcher.giveDamage(target: defenser)
                if defenser.life <= 0 {
                    let index = defendingPlayer.team.index(where: {$0 === defenser})
                    defendingPlayer.team.remove(at: index!)
                }
        }
        else {
            // For other characters, to ask the player is he wants to attack or heal.
            let attack = attackingPlayer.wantToAttack()
                if attack {
                    let defenser = attackingPlayer.selectCharacter(in: defendingPlayer.team)
                        chestRandom(attacker: attacker)
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
    // A chest appears randomly with an weapon (bonus or malus) to replace the character's current weapon.
    // A chest appears randomly.
    func chestRandom(attacker: Character) {
        let round = Int(arc4random_uniform(100))
        if round >= 70 {
            print("\nGood job ! You have found a chest !")
            _ = chestWeapon(character: attacker)
            replaceWeapon(character: attacker)
        }
    }
    // A weapon is taken at random in the chest.
    func chestWeapon(character: Character) -> Weapon {
        print("In this chest, a weapon appears randomly and it is given to your character !")
        let randomIndex = Int(arc4random_uniform(UInt32(chest.count)))
        
        return chest[randomIndex]
    }
    // The current weapon of the character is replaced by the one taken in the chest.
    func replaceWeapon(character: Character) {
        let newWeapon = chestWeapon(character: character)
        character.weapon = newWeapon
        print("\nThe new information about this character is : \(character.name) - \(character.type) - \(character.life) points of life - \(character.weapon.name) - \(character.weapon.damage) points of damage - \(character.weapon.repair) points of repair")
    }
}
