//
//  GridBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct GridBootCamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),

    ]
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)


            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section One")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.orange)
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .frame( height: 150)
                        }
                    }

                    Section(header:
                                Text("Section 2")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.orange)
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .frame( height: 150)
                        }
                    }

                })

        }

    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}
