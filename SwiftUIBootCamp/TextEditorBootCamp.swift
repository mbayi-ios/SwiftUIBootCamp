//
//  TextEditorBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TextEditorBootCamp: View {
    @State var textEditorText: String = "This is the starting text"
    @State var savedText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("save".uppercased())
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .background(Color.blue)

                })
                Text(savedText)
            Spacer()
            }
            .padding()
            .background(Color.yellow)
            .navigationTitle("Text Editor BootCamp")
        }
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}
