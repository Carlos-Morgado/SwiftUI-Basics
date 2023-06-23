//
//  MainView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 23/6/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                ContentView()
                Divider().padding()
                ImageView()
                Divider().padding()
                UIKitView().frame(height: 400)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            MainView()
                .previewInterfaceOrientation(.landscapeLeft)
                .previewDevice("iPad Pro (12.9-inch) (6th generation)")
        }
       
    }
}
