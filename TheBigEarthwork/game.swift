import Foundation

class Game {
    var player1: Player
    var player2: Player
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
// Le jeu commence par une introduction et une demande de confirmation aux joueurs pour démarrer.
    func startGame() {
        introduction()
        confirmation()
// Ensuite les joueurs se présentent tour à tour.
        player1.introduceYourSelf()
        player2.introduceYourSelf()
// Ils créent leur équipe tour à tour et nomment leurs personnages par la même occasion.
        player1.createYourTeam()
        player2.createYourTeam()
    }
}

func introduction() {
    print("The World is in the throes of a merciless war. There are no more good guys, no more bad guys, everyone is fighting endlessly... A last fight can save the World, and you will lead it. Welcome to The Big EarthWork ! \n")
}

func confirmation() {
    print("Are you ready to start the game ? (yes or no)")
    if let choiceAnswer = readLine() {
        switch choiceAnswer {
        case "yes":
            print("Allons-y !")
        case "no":
            print("A une prochaine fois !")
            exit(0)
        default:
            print("Je ne comprends pas votre choix !")
        }
    }
}
