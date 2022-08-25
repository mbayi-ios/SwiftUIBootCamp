//
//  ButtonStylesBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 25/08/2022.
//

import SwiftUI

struct ButtonStylesBootCamp: View {
    var body: some View {
        VStack {

            Button {

            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large )
            .buttonStyle(.borderedProminent)

            Button("Button Title") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStylesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootCamp()
    }
}
