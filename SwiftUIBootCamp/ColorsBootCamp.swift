//
//  ColorsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
                //Color(#colorLiteral(red: 0, green: 0.3, blue: 0.5, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 20)
            //.shadow(color: .green.opacity(0.3), radius: 20, x: 0.0, y: 20)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 20, x: 0.0, y: 20)
    }
}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()


    }
}
