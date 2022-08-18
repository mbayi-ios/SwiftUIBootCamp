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

                NavigationLink("Hello, world",
                               destination: Text("second Screen"))
                
                Text("Hello world1")
                Text("Hello world2")
                Text("Hello world3")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarTitleDisplayMode(.large)
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)

        }
    }
}

struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
