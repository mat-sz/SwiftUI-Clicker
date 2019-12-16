//
//  ContentView.swift
//  SwiftUI Clicker
//
//  Created by Mat Sz on 15/12/2019.
//  Copyright © 2019 Mat Sz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var gameState = GameState()
    
    var body: some View {
        VStack() {
            Button(action: {
                self.gameState.click()
            }) {
                Text("Click me!")
            }
            .padding(10)
            .background(Color.blue)
            .foregroundColor(.white)
            
            Text("\(gameState.points) points")
            
            if gameState.pointsPerSecond > 0 {
                Text("\(gameState.pointsPerSecond) points/s")
            }
            
            Spacer()
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
