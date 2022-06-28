//
//  ProfilePicture.swift
//  sonddr
//
//  Created by Paul Mielle on 28/06/2022.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        Image("Placeholders/ProfilePicture")
            .resizable()
            .scaledToFit()
            .frame(width: 32)
            .cornerRadius(99)
            .overlay {
                RoundedRectangle(cornerRadius: 99)
                    .stroke(Color("Colors/Foreground"), lineWidth: 1)
                    .opacity(0.5)
            }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
