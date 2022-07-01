//
//  ContentView.swift
//  sonddr
//
//  Created by Paul Mielle on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let customTabBarAppearance = UITabBarAppearance()
        customTabBarAppearance.configureWithOpaqueBackground()
        customTabBarAppearance.backgroundColor = UIColor(Color("Colors/Background"))
        customTabBarAppearance.shadowColor = nil
        UITabBar.appearance().standardAppearance = customTabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = customTabBarAppearance
    }
    
    var body: some View {
        TabView {
            IdeasView()
                .tabItem {
                    Image(systemName: "lightbulb")
                }
            Text("search view...")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("messages view...")
                .tabItem {
                    Image(systemName: "bubble.left")
                }
            Text("notifications view...")
                .tabItem {
                    Image(systemName: "bell")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
