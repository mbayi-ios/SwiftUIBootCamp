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
                Text("hello: \(index)")
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
