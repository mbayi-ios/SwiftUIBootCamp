//
//  FrameBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
