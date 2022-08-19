//
//  TabViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct TabViewBootCamp: View {

    @State var selectedTab: Int = 2

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)

            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
        .accentColor(.black)
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea()
            VStack {
                Text("HOME TAB")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
        }

    }
}


struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}
