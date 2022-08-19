//
//  TabViewStyleBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TabViewStyleBootCamp: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.yellow)
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.purple)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewStyleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewStyleBootCamp()
    }
}
