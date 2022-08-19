//
//  TextFieldBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

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
                    saveText()
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)

                        .font(.headline)
                })

                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield Bootcamp")
        }
    }

    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}
