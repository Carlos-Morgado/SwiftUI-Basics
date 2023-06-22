//
//  ImageView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 22/6/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(spacing: 25) {
            Image("F1")
                .resizable()
                .padding(0.0)
                .frame(width: 500, height: 250, alignment: .center)
                .background(Color.blue)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 5))
                .shadow(color: Color.red, radius: 25)
            
            Image(systemName: "car")
                .resizable()
                .padding(25.0)
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color.black)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
                //.shadow(color: Color.red, radius: 25)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
