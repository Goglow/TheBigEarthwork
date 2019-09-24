import Foundation

/*
 
 if character = enchantress - druid - warrior
    proposer 1. Attaquer
            2. Soigner
 
 if character = ditcher
 proposer : 1. Attaquer
 
 Si un personnage restant : 1
 afficher 1.
 
 Si deux personnages restant : 2
 afficher 1.
          2.
 
 si trois personnages restant : 3
   afficher 1.
            2.
            3.
 
 
 
 
} */

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
 
 Joueur 1 Choisissez votre personnage => OK
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
 
 func fight() {
 let attacker = player1.selectCharacter()
 if let ditcher = attacker as? Ditcher {
 ditcher.giveDamage(target: defenser)
 }
 else {
 let attacker = player1.wantToAttack()
 if attack {
 let attacker = player1.whoAttack()
 attacker.giveDamage(target: defenser)
 } else {
 let repair = player1.whoAttack()
 attacker.giveRepair(target: attacker)
 }
 }
 } // while endGame
 
 
 Avant
 func fight() {
 let attacker = player1.selectCharacter()
 // Vérifier si le personnage est un ditcher ou pas
 
 if let ditcher = attacker as? Ditcher {
 // Si l'attaqueur est un ditcher faire quelque chose
 let defenser = player2.selectCharacter()
 ditcher.giveDamage(target: defenser)
 }
 else {
 // D'abord demander au joueur s'il veut attaquer ou défendre
 let attack = player1.wantToAttack()
 if attack {
 let defenser = player2.selectCharacter()
 attacker.giveDamage(target: defenser)
 } else {
 let defenser = player1.selectCharacter()
 attacker.giveDamage(target: defenser)
 }
 }
 } // while endGame
 
 
 func fight() {
 let attacker = player1.selectCharacter()
 // Vérifier si le personnage est un ditcher ou pas
 if let ditcher = attacker as? Ditcher {
 // Si l'attaqueur est un ditcher faire quelque chose
 let defenser = player2.selectCharacter()
 ditcher.giveDamage(target: defenser)
 }
 else {
 // D'abord demander au joueur s'il veut attaquer ou défendre
 let attack = player1.wantToAttack()
 if attack {
 let defenser = player1.whoAttack()
 attacker.giveDamage(target: defenser)
 } else {
 let defenser = player1.whoAttack()
 attacker.giveRepair(target: attacker)
 }
 }
 } // while endGame
 
 
 func characterIsDead() -> Character {
 if target.life <= 0 {
 team.remove(at: target)
 }
 } */
