//
//  GoalChips.swift
//  sonddr
//
//  Created by Paul Mielle on 28/06/2022.
//

import SwiftUI

struct GoalChips: View {
    
    let goals: [Goal]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                self.LearnMore
                ForEach(self.goals) { goal in
                    GoalChip(goal: goal)
                }
            }
            .padding(.leading)
        }
    }
    
    var LearnMore: some View {
        HStack(spacing: 10) {
            Image(systemName: "info.circle")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 20)
            Text("Learn more")
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color("Colors/Foreground"))
        .foregroundColor(Color("Colors/Background"))
        .cornerRadius(99)
    }
}

struct GoalChips_Previews: PreviewProvider {
    static var previews: some View {
        GoalChips(goals: [
            dummyGoal(id: "no_poverty", order: 1),
            dummyGoal(id: "decent_work", order: 2),
        ])
    }
}
