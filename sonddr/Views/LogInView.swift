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
    @State private var username = ""
    @State private var password = ""
    enum FocusedField {
            case username, password
        }
    @FocusState private var focusedField: FocusedField?
    
    
    // body
    // ------------------------------------------
    var body: some View {
        NavigationView {
            ZStack {
                Color("Colors/Background").ignoresSafeArea(.all)
                VStack(spacing: 30) {
                    
                    Spacer()
                    
                    // input fields
                    VStack(spacing: 30) {
                        TextField("Username", text: $username)
                            .focused($focusedField, equals: .username)
                        SecureField("Password", text: $password)
                            .focused($focusedField, equals: .password)
                    }
                    .padding()
                    
                    // buttons
                    VStack(spacing: 20) {
                        self.logInButton
                        Text("or")
                        self.logInWithGoogleButton
                        HStack {
                            self.otherProviders
                            Spacer()
                        }.padding(.horizontal)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("New here?").opacity(0.5)
                        Text("Create an account")
                    }

                    
                }
                .padding()
            }
            .navigationTitle("Welcome back!")  // TODO: greetings depend on time of day
        }
    }
    
    var otherProviders: some View {
        Button(action: { /* ... */ }) {
            HStack(spacing: 10) {
                Image(systemName: "chevron.down")
                Text("Other providers")
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(Color("Colors/Background"))
            .foregroundColor(Color("Colors/Foreground"))
            .cornerRadius(99)
        }
        
    }
    
    var logInButton: some View {
        Button(action: { /* ... */ }) {
            Text("Log in")
                .fontWeight(.bold)
                .foregroundColor(Color("Colors/Foreground"))
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color("Colors/Green"))
                .cornerRadius(20)
        }
    }
    
    var logInWithGoogleButton: some View {
        Button(action: { /* ... */ }) {
            HStack(spacing: 10) {
                Image("GoogleLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 26)
                Text("Log in with Google")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Colors/Foreground"))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(Color("Colors/Foreground").opacity(0.5))
            .cornerRadius(20)
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
