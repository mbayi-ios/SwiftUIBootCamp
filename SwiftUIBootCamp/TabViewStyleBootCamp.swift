//
//  TabViewStyleBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TabViewStyleBootCamp: View {

    let icons: [String] = [
        "heart.fill", "globe", "housr.fill", "person.fill"
    ]
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(Color.red)
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewStyleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewStyleBootCamp()
    }
}
