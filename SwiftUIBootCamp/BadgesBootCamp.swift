//
//  BadgesBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 25/08/2022.
//

import SwiftUI

struct BadgesBootCamp: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem{
                    Image(systemName: "heart.fill")


                    Text("Hello")

                }
                .badge(2)

            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("hi")

            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
        .accentColor(.yellow)
    }
}

struct BadgesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootCamp()
    }
}
