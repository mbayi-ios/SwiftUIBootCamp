//
//  ButtonsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct ButtonsBootCamp: View {
    @State var title: String = "This is my title"

    var body: some View {
        VStack(spacing: 20) {
            Text("\(title)")

            Button("Click me!") {
                self.title = "button was pressed"
            }

            Button(action: {
                self.title = "button Two was pressed"
            }, label: {
                Text("Button 2")
            })

        }
    }
}

struct ButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootCamp()
    }
}
