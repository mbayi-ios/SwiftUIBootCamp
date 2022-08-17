//
//  InitializerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct InitializerBootCamp: View {

    let backgroundColor: Color
    let count: Int
    let title: String

    init(count: Int, title: String) {
        self.count = count
        self.title = title

        if title == "Apple" {
            self.backgroundColor = Color.red
        } else {
            self.backgroundColor = Color.orange
        }
    }

    var body: some View {
        VStack(spacing: 15) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()

            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootCamp(count: 5, title: "Apple")
    }
}
