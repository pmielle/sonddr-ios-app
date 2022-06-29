//
//  ContentView.swift
//  sonddr
//
//  Created by Paul Mielle on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let customToolbarAppearance = UINavigationBarAppearance()
        customToolbarAppearance.configureWithOpaqueBackground()
        customToolbarAppearance.backgroundColor = UIColor(Color("Colors/Background"))
        customToolbarAppearance.shadowColor = nil
        UINavigationBar.appearance().standardAppearance = customToolbarAppearance
        UINavigationBar.appearance().compactAppearance = customToolbarAppearance
    }
    
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
