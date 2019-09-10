import Foundation

// Create a class "Game"

class Game {
    var player1: Player
    var player2: Player
    
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
}
