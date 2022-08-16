//
//  IconsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.on.square.fill")
            .renderingMode(.original)
            //.resizable()
            //.aspectRatio( contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .font(.largeTitle)
            //.font(.system(size: 200))
            .foregroundColor(.red)
            //.frame(width: 300, height: 300)
            .clipped()

    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
