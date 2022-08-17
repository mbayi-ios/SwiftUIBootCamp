//
//  BindingBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var backgroundColor: Color = Color.green
    @State var  title: String = "Title"

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue

    @Binding var title: String

    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.yellow
            title = "New title"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })

    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}
