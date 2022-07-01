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
        ZStack {
            LazyVStack(spacing: 0, pinnedViews: [.sectionHeaders]) {
                Section(header: sectionHeader(text: "Today")) {
                    ForEach(self.ideas) { idea in
                        IdeaCard(idea: idea)
                            .padding(.bottom, 10)
                    }
                }
            }
            sortBy      
        }
    }
    
    var sortBy: some View {
        VStack {
            HStack {
                Spacer()
                HStack(spacing: 10) {
                    Text("By date")
                        .padding(.vertical)
                    Image("Icons/SortBy")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20)
                }
                .padding(.horizontal)
            }
            Spacer()
        }
    }
    
    func sectionHeader(text: String) -> some View {
        return HStack {
            Text(text)
            Spacer()
        }
        .padding()
        .background(Color("Colors/Background"))
    }
}

struct IdeaList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStack {
                Color("Colors/Background").ignoresSafeArea(.all)
                ScrollView {
                    IdeaList()
                }
            }
        }
    }
}
