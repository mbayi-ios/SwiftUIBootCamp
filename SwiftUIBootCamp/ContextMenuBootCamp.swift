//
//  ContextMenuBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.red.cornerRadius(15))
        .contextMenu(menuItems: {
            Text("Menu Item 1")
            Text("Menu Item 1")
            Text("Menu Item 1")
        })
    }
}

struct ContextMenuBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootCamp()
    }
}
