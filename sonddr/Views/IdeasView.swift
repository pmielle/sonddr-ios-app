//
//  IdeasView.swift
//  sonddr
//
//  Created by Paul Mielle on 01/07/2022.
//

import SwiftUI

struct IdeasView: View {
    
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

struct IdeasTabView_Previews: PreviewProvider {
    static var previews: some View {
        IdeasView()
    }
}
