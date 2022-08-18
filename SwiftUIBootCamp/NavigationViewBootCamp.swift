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
                               destination: MyOtherScreen())

                Text("Hello world1")
                Text("Hello world2")
                Text("Hello world3")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarTitleDisplayMode(.large)
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(leading: Image(systemName: "person.fill"), trailing: Image(systemName: "gear"))

        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)

            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("third screen"))
            }

        }
    }
}

struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
