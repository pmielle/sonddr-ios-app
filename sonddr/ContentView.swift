//
//  ContentView.swift
//  sonddr
//
//  Created by Paul Mielle on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Colors/Background")
                    .ignoresSafeArea(.all)
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
