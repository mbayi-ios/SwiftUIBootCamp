//
//  ModelBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct ModelBootCamp: View {
    @State var users: [String] = [
        "Nick", "Emily", "Chris"
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { name in

                    HStack(spacing: 15) {
                        Circle()
                            .frame(width:35, height: 35)
                        Text(name)
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}
