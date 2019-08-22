//
//  main.swift
//  TheBigEarthwork
//
//  Created by Melissa GS on 19/08/2019.
//  Copyright © 2019 Goglow. All rights reserved.
//

import Foundation

func input() -> Int {
    let strData = readLine()
    
    return Int(strData!)!
}
// Comprendre la fonction input dans son détail (Déballage d'optionnel : Voir cours partie optionnel)


/* Hello,
 Encore bienvenue parmi nous !
 J’ai donc besoin que tu réalises le code d’une application iOS permettant de :
 
 1. Initialiser le jeu en sélectionnant les personnages des deux équipes, en les nommant tous de manière différente (ce sera plus simple pour moi) ;
 
 2. Réaliser le combat au tour par tour. L’idée, c’est donc que le joueur 1 puisse choisir un personnage de son équipe, choisir le personnage qui va subir l’action (dans l’équipe adverse en cas d’attaque ou dans son équipe en cas de soin), de réaliser l’action, puis de vérifier si la partie est terminée, sinon c’est au tour du joueur 2 ;
 
 3. Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts), tu affiches le joueur qui a gagné et les statistiques de jeu : le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.).
 
 Si je résume la base du jeu : celui-ci est composé de deux joueurs. Chaque joueur a une équipe composée de trois personnages. Chaque personnage a des points de vie, un nom et une arme.
 
 Ah oui, j’ai oublié de te préciser, les personnages attaquent avec une arme. C’est elle qui doit déterminer les dégâts que le personnage va réaliser. Une autre fonctionnalité qu’il faut absolument intégrer (j’aimerais ajouter un peu de hasard dans le jeu) : un coffre peut apparaître devant un personnage quand celui joue son tour. Ce coffre contiendra forcément une arme (plus ou moins puissante que celle existante).

 J’attends avec impatience ton projet !
 
 Si tu pouvais aussi le commenter au maximum. Je sais, ça revient à dire: « n’oublie pas de respirer », mais comme c’est moi qui vais utiliser ton projet, et que je ne suis pas une développeuse (même si j’ai des bases), c’est encore plus important.
 
 Merci beaucoup !
 
 Charlotte, game-designeuse, FrenchGameFactory */
