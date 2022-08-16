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
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)

            VStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)

                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)

                HStack {
                    Rectangle()
                        .fill(Color.purple)
                    .frame(width: 50, height: 50)

                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 58, height: 78)

                    Rectangle()
                        .fill(Color.black)
                    .frame(width: 50, height: 50)
                }
            }
            .background(Color.black)

        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
