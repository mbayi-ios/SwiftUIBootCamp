//
//  ScrollViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView{
            VStack {
                Rectangle()
                    .frame( height: 300)
                Rectangle()
                    .frame( height: 300)
                Rectangle()
                    .frame( height: 300)
                Rectangle()
                    .frame( height: 300)
            }
        }

    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
