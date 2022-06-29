//
//  User.swift
//  sonddr
//
//  Created by Paul Mielle on 29/06/2022.
//

struct User: Identifiable {
    let id: String
    let name: String
    let profilePicture: String
}

let dummyUser = User(id: "dummy_id", name: "Dummy User", profilePicture: "Placeholders/ProfilePicture")
