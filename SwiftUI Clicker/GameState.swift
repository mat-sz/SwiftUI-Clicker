//
//  GameState.swift
//  SwiftUI Clicker
//
//  Created by Mat Sz on 15/12/2019.
//  Copyright © 2019 Mat Sz. All rights reserved.
//

import Foundation

class GameState : ObservableObject {
    @Published var points = 0
    @Published var pointsPerSecond = 0
    
    init() {
        self.points = 1
    }
    
    func click() {
        self.points += 1
    }
}
