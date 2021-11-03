//
//  MemoryApp.swift
//  Memory
//
//  Created by Ivana on 25.10.21.
//

import SwiftUI

@main
struct MemoryApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
