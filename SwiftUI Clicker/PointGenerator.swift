//
//  PointGenerator.swift
//  SwiftUI Clicker
//
//  Created by Mat Sz on 16/12/2019.
//  Copyright © 2019 Mat Sz. All rights reserved.
//

import Foundation

struct PointGenerator : Identifiable {
    var id = UUID()
    var name: String
    var pointsPerSecond: Int
    var price: Int
}
