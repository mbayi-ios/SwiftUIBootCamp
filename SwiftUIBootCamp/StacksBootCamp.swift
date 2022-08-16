//
//  StacksBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct StacksBootCamp: View {
    // VStack -> Vertical
    // HStack -> Horizontal
    // ZStack -> ZInded(back to front)
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("5")
                .font(.largeTitle)
                .underline()

            Text("Item in your cart")
                .font(.caption)
                .foregroundColor(.black)
        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
