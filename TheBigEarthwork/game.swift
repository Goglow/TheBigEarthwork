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
        player1.introduceYourPlayers()
        player2.createYourTeam()
        player2.introduceYourPlayers()
    }
}

func introduction() {
    print(
        """
                    The World is in the throes of a merciless war. There are no more good guys, no more bad guys, everyone is fighting endlessly...
                    A last fight can save the World, and you will lead it.
                                Welcome to The Big EarthWork !
"""
    )}

func confirmation() {
    print("Are you ready to start the game ? (yes or no)")
    if let choiceAnswer = readLine() {
        switch choiceAnswer {
        case "yes":
            print("Allons-y !")
        case "no":
            print("A une prochaine fois !")
        default:
            print("Je ne comprends pas votre choix !")
        }
    }
}



// La partie commence en demandant aux joueurs de se présenter, quand c'est fait. Un message apparaît pour leur demander s'ils sont prêts à commencer la partie.

/* Bonjour \(joueur1), Bonjour \(joueur2),
 
 Etes-vous prêts à démarrer la partie ? (Y, N)
 
 Il est alors temps de composer vos équipes pour démarrer le grand terrassement... Mwouahahaaa
 
 Joueur 1, choisit ton personnage 1,
 
 1 -
 2
 3
 4
 
 tu as choisis : , donnes lui un nom ?
 
 Maintenant, choisit ton personnage 2 ! Donnes lui un nom ?
 
 1-
 2
 3
 4
 
 Ce nom est déjà pris, choisis un autre nom ?
 
 Et ton dernier personnage ? Quel nom ?
 
 1 -
 2
 3
 4
 
 C'est à ton tour de former ton équipe, \(joueur2)
 
 Personnage 1' :
 
 1 -
 2
 3
 4
 
 tu as choisis : , donnes lui un nom ?
 
 Maintenant, choisit ton personnage 2' ! Donnes lui un nom ?
 
 1-
 2
 3
 4
 
 Ce nom est déjà pris, choisis un autre nom ?
 
 Et ton dernier personnage ? Quel nom ?
 
 1 -
 2
 3
 4
 
 Super, la partie peut commencer !!!
 */
