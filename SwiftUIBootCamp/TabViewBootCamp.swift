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
            HomeView()
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
        .accentColor(.black)
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            Text("HOME TAB")
                .font(.largeTitle)
                .foregroundColor(.white)
        }

    }
}


struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}
