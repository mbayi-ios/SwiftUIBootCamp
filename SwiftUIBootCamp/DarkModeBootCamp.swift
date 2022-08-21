//
//  DarkModeBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct DarkModeBootCamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("Yhis Color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This Color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("this color is globally Adaptive")
                        .foregroundColor(Color( "AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green: .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootCamp()
                .preferredColorScheme(.dark)
            DarkModeBootCamp()
                .preferredColorScheme(.light)
        }

    }
}
