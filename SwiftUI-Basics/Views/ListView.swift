//
//  ListView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 23/6/23.
//

import SwiftUI

private let programmersArray = [Programmer(id: 14, name: "Carlos Morgado", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true),
                                Programmer(id: 234, name: "Pedro", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false),
                                Programmer(id: 564, name: "Pepe", languages: "Kotlin", avatar: Image(systemName: "person.fill"), favorite: false),
                                Programmer(id: 9856, name: "María", languages: "Python, Java", avatar: Image(systemName: "person.fill"), favorite: true),
                                Programmer(id: 3, name: "Paula García", languages: "Java Script", avatar: Image(systemName: "person.fill"), favorite: false)]

struct ListView: View {
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersArray.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    } // Variable calculada
    
    
    var body: some View {
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Show favorites")
            } .padding()
            NavigationView {
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(detailProgrammer: programmer)) {
                        RowView(programmerRow: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
