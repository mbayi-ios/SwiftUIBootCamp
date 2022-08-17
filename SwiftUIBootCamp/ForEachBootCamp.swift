//
//  ForEachBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct ForEachBootCamp: View {
    var body: some View {
        VStack{
            ForEach(1..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("index is: \(index)")
                }
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
