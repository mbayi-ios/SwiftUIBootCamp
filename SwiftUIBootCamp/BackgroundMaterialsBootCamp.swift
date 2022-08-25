//
//  BackgroundMaterialsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 25/08/2022.
//

import SwiftUI

struct BackgroundMaterialsBootCamp: View {
    var body: some View {
        VStack {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
        Image("sigmund")

        )
    }
}

struct BackgroundMaterialsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootCamp()
    }
}
