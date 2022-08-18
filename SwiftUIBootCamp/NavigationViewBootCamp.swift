//
//  NavigationViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarTitleDisplayMode(.large)
            //.navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(true)

        }
    }
}

struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
