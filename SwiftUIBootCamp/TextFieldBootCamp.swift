//
//  TextFieldBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)

                Button(action: {

                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)

                        .font(.headline)
                })
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield Bootcamp")
        }
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}
