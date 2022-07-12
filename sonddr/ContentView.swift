//
//  ContentView.swift
//  sonddr
//
//  Created by Paul Mielle on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    // properties
    // ------------------------------------------
    @StateObject var auth = AuthenticationService()
    
    
    // lifecycle hooks
    // ------------------------------------------
    init() {
        let customTabBarAppearance = UITabBarAppearance()
        customTabBarAppearance.configureWithOpaqueBackground()
        customTabBarAppearance.backgroundColor = UIColor(Color("Colors/Background"))
        customTabBarAppearance.shadowColor = nil
        UITabBar.appearance().standardAppearance = customTabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = customTabBarAppearance
    }
    
    
    // body
    // ------------------------------------------
    var body: some View {
        if (auth.user == nil) {
            LogInView().environmentObject(auth)
            
        } else {
            
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
            }.environmentObject(auth)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
