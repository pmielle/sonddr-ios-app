//
//  LogInView.swift
//  sonddr
//
//  Created by Paul Mielle on 09/07/2022.
//

import SwiftUI

struct LogInView: View {
    
    
    // properties
    // ------------------------------------------
    @EnvironmentObject var auth: AuthenticationService
    
    
    // body
    // ------------------------------------------
    var body: some View {
            ZStack {
                Color("Colors/Primary").ignoresSafeArea(.all)
                VStack(spacing: 50) {
                    
                    Spacer()
                    
                    Text("sonddr is place to share and contribute to each other ideas to make the world a little (or a more) better")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    
                    // buttons
                    VStack(spacing: 20) {
                        self.logInButton
                        self.signUpButton
                    }
                    
                    Spacer()
                    
                }
                .padding()
            }
    }
    
    
    // subviews
    // ------------------------------------------
    var logInButton: some View {
        Button(action: { auth.logIn() }) {
            Text("Log in")
                .fontWeight(.bold)
                .foregroundColor(Color("Colors/Foreground"))
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color("Colors/Green"))
                .cornerRadius(20)
        }
    }
    
    var signUpButton: some View {
        Button(action: { /* ... */ }) {
            Text("Sign up")
                .fontWeight(.bold)
                .foregroundColor(Color("Colors/Foreground"))
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color("Colors/Foreground").opacity(0.5))
                .cornerRadius(20)
        }
    }
    
    
    // others
    // ------------------------------------------
    // ...
    
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
            .environmentObject(AuthenticationService())
    }
}
