//
//  GradientBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
                //LinearGradient(colors: [Color.red, Color.blue], startPoint: .top, endPoint: .trailing)
                //RadialGradient(colors: [Color.red, Color.blue], center: .leading, startRadius: 4, endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topTrailing, angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootCamp()
    }
}
