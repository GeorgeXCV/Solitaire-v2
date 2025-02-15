//
//  Game.swift
//  Solitaire
//
//  Created by George on 21/03/2020.
//  Copyright © 2020 George. All rights reserved.
//

import UIKit

class Game {
    static let sharedInstance = Game()
    
    private init() {
        
    }
    
    func moveTopCard(from: CardDataStack, to: CardDataStack, faceUp: Bool, makeNewTopCardFaceup: Bool) {
        var card = from.topCard()
        if (card != nil) {
            card!.faceUp = faceUp
            to.addCard(card: card!)
            from.popCards(numberToPop: 1, makeNewTopCardFaceup: makeNewTopCardFaceup)
        }
    }
    
    func copyCards(from: CardDataStack, to: CardDataStack) {
        from.cards.forEach( { _ in self.moveTopCard(from: from, to: to, faceUp: false, makeNewTopCardFaceup: false) })
    }
    
    func shuffle() {
        Model.sharedInstance.shuffle()
    }
    
    func initalizeDeal() {
        self.shuffle()
        
        Model.sharedInstance.tableauStacks.forEach { $0.removeAllCards() }
        Model.sharedInstance.foundationStacks.forEach { $0.removeAllCards() }
        Model.sharedInstance.talonStack.removeAllCards()
        Model.sharedInstance.stockStack.removeAllCards()
    }
    
}
