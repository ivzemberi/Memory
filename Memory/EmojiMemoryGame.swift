//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by Ivana on 26.10.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚂", "🚜", "🚀", "✈️", "🚗", "🚙", "🚎", "🛻", "🚕", "🚘", "🚛", "🏍", "🚁", "⛵️", "🚐", "🛫", "🚲", "🚚", "🛩", "🚌", "🚃", "🚉", "🏎", "🛸"]
    
    private static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in
            emojis[pairIndex]
        }
    }
      
    
    @Published private var model = createMemoryGame()
        
    var cards: Array<Card> {
        model.cards
    }
    
    
    // MARK: -Intent(s)
    
    func choose(_ card: Card){
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
    
}
