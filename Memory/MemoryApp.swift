//
//  MemoryApp.swift
//  Memory
//
//  Created by Ivana on 25.10.21.
//

import SwiftUI

@main
struct MemoryApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
