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

    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .orange {
            self.title = "Apples"
            self.backgroundColor = .red

        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }

    enum Fruit {
        case apple
        case orange
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
        InitializerBootCamp(count: 100, fruit: .orange)
    }
}
