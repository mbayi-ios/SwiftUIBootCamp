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
        VStack (spacing: 50){
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)

                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }

    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
