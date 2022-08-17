//
//  ExtractSubViewsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct ExtractSubViewsBootCamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea(.all)

            HStack {

                MyItem(title: "Mango", count: 2, color: .red)

                MyItem(title: "Mango", count: 2, color: .purple)

                MyItem(title: "Mango", count: 12, color: .yellow)
            }

        }
    }
    
}

struct ExtractSubViewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootCamp()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color

    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
