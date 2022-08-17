//
//  BindingBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var backgroundColor: Color = Color.green
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue

    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.yellow
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
