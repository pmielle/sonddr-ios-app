//
//  IdeaList.swift
//  sonddr
//
//  Created by Paul Mielle on 29/06/2022.
//

import SwiftUI

struct IdeaList: View {
    
    let ideas: [Idea] = [
        dummyIdea(),
        dummyIdea(),
        dummyIdea()
    ]
    
    var body: some View {
        LazyVStack(spacing: 10) {
            ForEach(self.ideas) { idea in
                IdeaCard(idea: idea)
            }
        }
    }
}

struct IdeaList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollView {
                IdeaList()
            }
        }
        
        
    }
}
