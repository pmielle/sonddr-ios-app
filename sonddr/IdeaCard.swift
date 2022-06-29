//
//  IdeaCard.swift
//  sonddr
//
//  Created by Paul Mielle on 29/06/2022.
//

import SwiftUI

struct IdeaCard: View {
    
    let idea: Idea
    
    var body: some View {
        VStack(spacing: 0) {
            Image(self.idea.cover)
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 5) {
                Text(self.idea.title)
                    .font(.headline)
                    .padding(.leading, 32 + 10)
                HStack(spacing: 10) {
                    ProfilePicture(user: self.idea.author)
                    Text("\(self.idea.author.name) · \(prettyTimeDelta(date: self.idea.date))")
                        .font(.subheadline)
                        .opacity(0.5)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
            .padding()
        }
    }
}

struct IdeaCard_Previews: PreviewProvider {
    static var previews: some View {
        IdeaCard(idea: dummyIdea())
    }
}
