//
//  GoalChip.swift
//  sonddr
//
//  Created by Paul Mielle on 28/06/2022.
//

import SwiftUI

struct GoalChip: View {
    
    let goal: Goal
    
    var body: some View {
        HStack(spacing: 5) {
            Image("Goals/Icons/\(self.goal.id)")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 20)
            Text(self.goal.name)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color("Goals/Colors/\(self.goal.order)"))
        .cornerRadius(99)
    }
}

struct GoalChip_Previews: PreviewProvider {
    static var previews: some View {
        GoalChip(goal: Goal(
            id: "no_poverty",
            name: "No poverty",
            order: 1))
    }
}
