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
        VStack (alignment: .center, spacing: 0){
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100)

            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 100)

            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
