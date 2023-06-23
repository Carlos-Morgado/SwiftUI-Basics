//
//  ContentView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 22/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
                .background(Color.gray)
            
            Text("¡Hola mundo!")
                .font(.title)
                .foregroundColor(Color.black)
                .padding()
                .background(Color.gray)
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .padding()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.purple)
                    .padding(90)
            }
            
            .background(Color.orange)
            
            Spacer()
            
            HStack {
                Text("Testing SwiftUI")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color.gray)
                Text("UIKit sucks!")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color.gray)
            }
        }
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
