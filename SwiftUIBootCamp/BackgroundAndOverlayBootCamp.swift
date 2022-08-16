//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//                //Color.red
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )

        //overlay
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )

//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50),
//                alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150),
//                 alignment: .bottomTrailing
//            )

        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundColor(Color.red)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                         )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.red, radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color.red, radius: 10, x: 5, y: 5),
                        alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootCamp()
    }
}
