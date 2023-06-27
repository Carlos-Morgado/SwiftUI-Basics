//
//  RowView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 23/6/23.
//

import SwiftUI

struct RowView: View {
    var programmerRow: Programmer
    var body: some View {
        HStack {
            programmerRow
                .avatar
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmerRow.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                Text(programmerRow.languages)
                    .font(.subheadline)
            }
            Spacer()
            
            if programmerRow.favorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmerRow: Programmer(id: 14, name: "Carlos Morgado", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
