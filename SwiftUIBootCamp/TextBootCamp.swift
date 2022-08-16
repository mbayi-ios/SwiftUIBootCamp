//
//  TextBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World! This is the swiftful Thinking bootcamp. I am really enjoying it".capitalized)
            //.font(.headline)
            //.fontWeight(.black)
            //.bold()
            //.underline()
            //.italic()
            //.strikethrough()
            //.underline(true, color: Color.red)
            //.font(.system(size: 24, weight: .semibold, design: .monospaced))
            //.baselineOffset(-50.0)
            //.kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 300, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
