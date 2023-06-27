//
//  Car.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 27/6/23.
//

import Foundation

struct Car: Hashable, Identifiable {
    var id = UUID()
    var name: String
}
