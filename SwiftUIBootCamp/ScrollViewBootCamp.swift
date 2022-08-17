//
//  ScrollViewBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(0..<10) { index in
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        ForEach(0..<30 ) { index in  
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white)
                                .frame(width: 200, height: 200)
                                .shadow(color: Color.black.opacity(0.1), radius: 10)
                                .padding()
                        }

                    }
                })

            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
