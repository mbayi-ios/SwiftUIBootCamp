//
//  AsyncImageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 25/08/2022.
//

import SwiftUI

struct AsyncImageBootCamp: View {
    let url  = URL(string: "https://picsum.photos/400")
    var body: some View {
        AsyncImage(url: url, content: { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .cornerRadius(20)

        }, placeholder: {
            ProgressView()
        })
            .frame(width: 100, height: 100)
    }
}

struct AsyncImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootCamp()
    }
}
