//
//  Fab.swift
//  sonddr
//
//  Created by Paul Mielle on 01/07/2022.
//

import SwiftUI

struct Fab: View {
    
    let color: Color
    let icon: String
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 99)
                        .fill(self.color)
                        .frame(width: 60, height: 60)
                    Image(systemName: self.icon)
                }
            }
        }
        .padding()
    }
}

struct Fab_Previews: PreviewProvider {
    static var previews: some View {
        Fab(color: Color("Colors/Primary"), icon: "plus")
    }
}
