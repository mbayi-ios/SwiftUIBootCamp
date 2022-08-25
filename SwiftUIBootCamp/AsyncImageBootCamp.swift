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
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()

            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                    .cornerRadius(20)

            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)

            default:
                Image(systemName: "questionmark")
                    .font(.headline)

            }
        }
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 400, height: 400)
//                .cornerRadius(20)
//
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

struct AsyncImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootCamp()
    }
}
