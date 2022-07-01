//
//  Idea.swift
//  sonddr
//
//  Created by Paul Mielle on 29/06/2022.
//

import Foundation

struct Idea: Identifiable {
    let id: String
    let title: String
    let author: User
    let date: Date
    let goals: [Goal]
    let rating: Int
    let cover: String
}

func dummyIdea() -> Idea {
    return Idea(id: UUID().uuidString, title: "Dummy title", author: dummyUser, date: Date.now, goals: [dummyGoal(id: "no_poverty", order: 1), dummyGoal(id: "decent_work", order: 2)], rating: 66, cover: "Placeholders/CoverPicture")
}
