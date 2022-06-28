//
//  HomeView.swift
//  sonddr
//
//  Created by Paul Mielle on 28/06/2022.
//

import SwiftUI

struct HomeView: View {
    
    let about = "Ea quidem voluptatum qui quasi repellendus et nostrum doloremque. Suscipit officiis veritatis non veritatis quod sunt quia minus molestiae. Dolores non voluptatem..."
    let goals: [Goal] = [
        Goal(id: "no_poverty", name: "No poverty", order: 1),
        Goal(id: "decent_work", name: "Decent work", order: 2),
        Goal(id: "health_and_well_being", name: "Heath and well-being", order: 3),
        Goal(id: "peace_and_justice", name: "Peace and justice", order: 4),
        // ...
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(self.about)
                    .padding(.horizontal)
                GoalChips(goals: self.goals)
                Spacer()
            }
            .padding(.top, 10)
        }
        .navigationTitle("All ideas")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
            }
            ToolbarItem {
                ProfilePicture()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStack {
                Color("Colors/Background").ignoresSafeArea(.all)
                HomeView()
            }
        }
    }
}
