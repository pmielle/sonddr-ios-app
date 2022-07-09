//
//  GoalBadge.swift
//  sonddr
//
//  Created by Paul Mielle on 01/07/2022.
//

import SwiftUI

struct GoalBadge: View {
    
    let goal: Goal
    static let size: CGFloat = 30
    static let padding: CGFloat = 5
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color("Goals/Colors/\(self.goal.order)"))
            Image("Goals/Icons/\(self.goal.id)")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: GoalBadge.size - GoalBadge.padding * 2, maxHeight: GoalBadge.size - GoalBadge.padding * 2)  // '* 2' because both sides
                
        }
        .frame(width: GoalBadge.size, height: GoalBadge.size)
    }
}

struct GoalBadge_Previews: PreviewProvider {
    static var previews: some View {
        GoalBadge(goal: dummyGoal(id: "no_poverty"))
    }
}
