//
//  HomeView.swift
//  sonddr
//
//  Created by Paul Mielle on 28/06/2022.
//

import SwiftUI

struct HomeView: View {
    
    let loggedInUser = dummyUser
    let about = "Ea quidem voluptatum qui quasi repellendus et nostrum doloremque. Suscipit officiis veritatis non veritatis quod sunt quia minus molestiae. Dolores non voluptatem..."
    let goals: [Goal] = [
        dummyGoal(id: "no_poverty", order: 1),
        dummyGoal(id: "decent_work", order: 2),
    ]
    @State private var showAddView = false
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text(self.about)
                        .padding(.horizontal)
                    GoalChips(goals: self.goals)
                        .padding(.bottom, 5)
                    IdeaList()
                    Spacer()
                }
                .padding(.top, 10)
            }
            Fab(
                color: Color("Colors/Primary"),
                icon: "plus",
                action: {
                    showAddView = true
                }
            )
            .sheet(isPresented: $showAddView) {
                AddView(showAddView: $showAddView)
            }
            
            
            
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
                ProfilePicture(user: self.loggedInUser)
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
