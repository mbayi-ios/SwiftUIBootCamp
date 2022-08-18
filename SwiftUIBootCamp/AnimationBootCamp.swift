//
//  AnimationBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 18/08/2022.
//

import SwiftUI

struct AnimationBootCamp: View {

    @State var isAnimated: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }

            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 100)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 120: 300)

            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
