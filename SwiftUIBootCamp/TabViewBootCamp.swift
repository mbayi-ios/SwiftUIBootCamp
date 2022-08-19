//
//  TabViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TabViewBootCamp: View {
    var body: some View {
        TabView {
            Text("HOME TAB")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }

            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Profile")
                }
        }
    }
}

struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}
