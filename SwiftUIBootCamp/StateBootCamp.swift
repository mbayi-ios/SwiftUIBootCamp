//
//  StateBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct StateBootCamp: View {

   @State var backgroundColor: Color = Color.green
    @State var title: String = "My title"
    @State var count: Int = 0

    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            //content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)

                Text("Count: \(count)")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        title = "button one was pressed"
                        count += 1
                    }
                    Button("Button 2") {
                        backgroundColor = .purple
                        title = "button two was pressed"
                        count -= 1
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
