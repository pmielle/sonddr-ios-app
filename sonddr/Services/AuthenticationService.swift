//
//  AuthenticationService.swift
//  sonddr
//
//  Created by Paul Mielle on 12/07/2022.
//

import Foundation
import Auth0

class AuthenticationService: ObservableObject {
    
    @Published var user: User?
    
    func logIn() {
        Auth0.webAuth().start { result in
            switch result {
            case .success(let credentials):
                print("login succeeded: \(credentials)")
                self.user = dummyUser
            case .failure(let error):
                print("failed with error: \(error)")
                self.user = nil
            }
        }
    }
    
    func logOut() {
        Auth0.webAuth().clearSession(federated: false) { result in
            switch result {
            case true:
                print("logout succeeded")
            case false:
                print("logout failed")
            }
        }
    }
    
}
