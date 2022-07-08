//
//  AddView.swift
//  sonddr
//
//  Created by Paul Mielle on 08/07/2022.
//

import SwiftUI

struct AddView: View {
    
    @Binding var showAddView: Bool
    
    
    // properties
    // ------------------------------------------
    let loggedInUser = dummyUser
    @State private var title: String = ""
    @State private var content: String = ""
    enum FocusedField {
        case title, content
    }
    @FocusState private var focusedField: FocusedField?
    
    
    // constructor
    // ------------------------------------------
    init(showAddView: Binding<Bool>) {
        self._showAddView = showAddView
        // opaque toolbar
        let customToolbarAppearance = UINavigationBarAppearance()
        customToolbarAppearance.backgroundColor = UIColor(Color("Colors/Background"))
        customToolbarAppearance.shadowColor = nil
        // semi-transparent toolbar
        let semiTransparentToolbarAppearance = customToolbarAppearance.copy()
        semiTransparentToolbarAppearance.backgroundColor = UIColor(Color("Colors/Background").opacity(0.5))
        // apply toolbar appearances
        UINavigationBar.appearance().scrollEdgeAppearance = semiTransparentToolbarAppearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = semiTransparentToolbarAppearance
        UINavigationBar.appearance().compactAppearance = customToolbarAppearance
        UINavigationBar.appearance().standardAppearance = customToolbarAppearance
    }
    
    // body
    // ------------------------------------------
    var body: some View {
        NavigationView {
            ZStack {
                Color("Colors/Background")
                ScrollView {
                    VStack(spacing: 20) {
                        
                        // cover
                        ZStack {
                            Rectangle()
                                .fill(Color("Colors/Foreground").opacity(0.5))
                                .aspectRatio(4/3, contentMode: .fit)
                            self.uploadACover
                            self.goalsOfInterest
                        }
                        
                        // title
                        TextField("Choose a title", text: $title)
                            .font(.title2)
                            .focused($focusedField, equals: .title)
                            .padding(.leading)
                            .padding(.leading, 32 + 20)
                        
                        // content
                        HStack(spacing: 20) {
                            ProfilePicture(user: loggedInUser)
                            TextField("Explain your idea", text: $content)
                                .focused($focusedField, equals: .content)
                        }
                        .padding(.horizontal)
                        Spacer()
                    }
                }.ignoresSafeArea()
                
            }
            .navigationTitle("Share an idea")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { self.onCloseClick() }) {
                        Image(systemName: "xmark")
                    }
                    .foregroundColor(Color("Colors/Foreground"))
                    
                }
            }

        }
    }
    
    
    // others
    // ------------------------------------------
    func onCloseClick() {
        showAddView = false
    }
    
    var uploadACover: some View {
        VStack(spacing: 5) {
            Image(systemName: "arrow.up.circle")
            Text("Upload a cover")
        }
        .foregroundColor(Color("Colors/Background"))
        .padding(.top, 35)
    }
    
    var goalsOfInterest: some View {
        VStack {
            Spacer()
            HStack {
                
                HStack(spacing: 10) {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 20)
                    Text("Goal(s) of interest")
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color("Colors/Background"))
                .foregroundColor(Color("Colors/Foreground").opacity(0.5))
                .cornerRadius(99)
                
                Spacer()
            }
        }
        .padding(.leading)
        .padding(.leading, 32 + 20)
        .padding(.bottom, 20)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(showAddView: .constant(true))
    }
}
