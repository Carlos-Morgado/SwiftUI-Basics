//
//  NavigationStackView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 27/6/23.
//

import SwiftUI

var fruitsArray: [Fruit] = [
    .init(name:"🍊 Orange"),
    .init(name:"🍏 Apple"),
    .init(name:"🍒 Cherries"),
    .init(name:"🍌 Banana"),
    .init(name:"🍓 Strawberry"),
    .init(name:"🍉 Watermelon"),
    .init(name:"🍋 Lemon"),
    .init(name:"🫐 Blueberries")
]

var carArray: [Car] = [
    .init(name: "Ferrari"),
    .init(name: "Mercedes"),
    .init(name: "Audi"),
    .init(name: "Peugeot"),
    .init(name: "Hyundai")
]

struct NavigationStackView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruitsArray) { fruit in
                        NavigationLink(fruit.name, value: fruit)
                    }
                }
                Section(header: Text("Cars")) {
                    ForEach(carArray) { car in
                        NavigationLink(car.name, value: car)
                    }
                }
            }
            .navigationDestination(for: Fruit.self) { fruit in
                Text(fruit.name)
            }
            .navigationDestination(for: Car.self) { car in
                Text(car.name)
            }
            .navigationTitle("My Weird List")
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
