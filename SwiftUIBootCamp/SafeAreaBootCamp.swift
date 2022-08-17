//
//  SafeAreaBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
