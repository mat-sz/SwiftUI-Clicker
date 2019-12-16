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
    var timer: Timer?
    
    init() {
        self.points = 1
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { _ in
            self.tick()
        })
    }
    
    func click() {
        self.points += 1
    }
    
    func tick() {
        self.points += self.pointsPerSecond
    }
}
