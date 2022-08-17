//
//  StateBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct StateBootCamp: View {

   @State var backgroundColor: Color = Color.green

    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            //content
            VStack(spacing: 20) {
                Text("title")
                    .font(.title)

                Text("Count: 1")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                    }
                    Button("Button 2") {
                        backgroundColor = .purple
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
