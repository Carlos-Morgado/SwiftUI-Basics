//
//  ListDetailView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 27/6/23.
//

import SwiftUI

struct ListDetailView: View {
    var detailProgrammer: Programmer
    
    var body: some View {
        VStack(spacing: 25) {
            detailProgrammer
                .avatar
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            Text(detailProgrammer.name)
                .font(.largeTitle)
            Text(detailProgrammer.languages)
                .font(.title)
            Spacer()
        }
    }
    
    struct ListDetailView_Previews: PreviewProvider {
        static var previews: some View {
            ListDetailView(detailProgrammer: Programmer(id: 14, name: "Carlos Morgado", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true))
        }
    }
}
