//
//  SpacerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 100, height: 100)
            Spacer()
            Rectangle()
                .frame(width: 100, height: 100)
        }
        .background(Color.yellow)
    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
