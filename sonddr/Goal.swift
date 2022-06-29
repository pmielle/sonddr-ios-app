//
//  Goal.swift
//  sonddr
//
//  Created by Paul Mielle on 28/06/2022.
//

import Foundation

struct Goal: Identifiable {
    let id: String
    let name: String
    let order: Int
}

func dummyGoal(id: String = UUID().uuidString, order: Int = 1) -> Goal {
    return Goal(id: id, name: "Dummy name", order: order)
}
