//
//  Fruit.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 27/6/23.
//

import Foundation
import SwiftUI

struct Fruit: Hashable, Identifiable {
    var id = UUID()
    var name: String
}
