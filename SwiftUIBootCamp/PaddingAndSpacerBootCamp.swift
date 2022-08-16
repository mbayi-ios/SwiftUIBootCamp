//
//  PaddingAndSpacerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {
        Text("Hello, World! This is fun")
            .background(Color.yellow)
            //.padding()
            .padding(.all, 20)
            .padding(.bottom, 30)
            .background(Color.blue)

    }
}

struct PaddingAndSpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootCamp()
    }
}
