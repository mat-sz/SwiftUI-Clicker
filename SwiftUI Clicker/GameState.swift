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
    @Published var pointGenerators: [ PointGenerator ] = [
        PointGenerator(name: "Point Generator #1", pointsPerSecond: 1, price: 50),
        PointGenerator(name: "Point Generator #2", pointsPerSecond: 2, price: 100),
        PointGenerator(name: "Point Generator #3", pointsPerSecond: 5, price: 250),
        PointGenerator(name: "Point Generator #4", pointsPerSecond: 10, price: 500)]
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
    
    func purchase(pointGenerator: PointGenerator) {
        if pointGenerator.price <= self.points {
            self.points -= pointGenerator.price
            self.pointsPerSecond += pointGenerator.pointsPerSecond
        }
    }
    
    func tick() {
        self.points += self.pointsPerSecond
    }
}
