//
//  ListView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 23/6/23.
//

import SwiftUI

private let programmers = [Programmer(id: 14, name: "Carlos Morgado", languages: "Swift", avatar: Image(systemName: "person.circle")),
                           Programmer(id: 234, name: "Pedro", languages: "Swift", avatar: Image(systemName: "person.circle")),
                           Programmer(id: 564, name: "Pepe", languages: "Kotlin", avatar: Image(systemName: "person.circle")),
                           Programmer(id: 9856, name: "María", languages: "Python, Java", avatar: Image(systemName: "person.circle")),
                           Programmer(id: 3, name: "Paula García", languages: "Java Script", avatar: Image(systemName: "person.circle"))]

struct ListView: View {
    var body: some View {
        List(programmers, id: \.id) { programmer in
            RowView(programmerRow: programmer)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}