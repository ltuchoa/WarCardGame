//
//  MatchCardModel.swift
//  WarCardGame
//
//  Created by Larissa Uchoa on 12/05/20.
//  Copyright © 2020 Larissa Uchoa. All rights reserved.
//

import Foundation

class MatchCardModel {
    
    func getCards() -> [Card] {
        
        var generatedCards = [Card]()
        
        for _ in 1...8 {
            
            let randomNumber = Int.random(in: 1...13)
            
            print(randomNumber)
            
            let cardOne = Card()
            let cardTwo = Card()
            
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCards += [cardOne, cardTwo]
        }
        
        generatedCards.shuffle()
        
        return generatedCards
        
    }
    
}
