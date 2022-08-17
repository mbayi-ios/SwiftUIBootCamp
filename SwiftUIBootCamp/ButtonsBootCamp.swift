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
            .accentColor(.red)

            Button(action: {
                self.title = "button Two was pressed"
            }, label: {
                Text("Button 2".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })

            Button(action: {
                self.title = "Button 3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)

                    )
            })


            Button(action: {
                self.title = "finished"
            }, label: {
                Text("Finished".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })

        }
    }
}

struct ButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootCamp()
    }
}
