//
//  ImageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("sigmund")
            //.renderingMode(.template)
            .resizable()
            .aspectRatio( contentMode: .fill)
            .frame(width: 300, height: 300)
            //.cornerRadius(150)
            //.clipped()
            .clipShape(
                //Circle()
                RoundedRectangle(cornerRadius: 20)
            )
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
