//
//  ExtractedFunctionsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 17/08/2022.
//

import SwiftUI

struct ExtractedFunctionsBootCamp: View {
    @State var backgroundColor: Color = Color.pink

    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)

            contentLayer

        }
    }

    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)

            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }

    func buttonPressed() {
        backgroundColor = .yellow
    }

}

struct ExtractedFunctionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootCamp()
    }
}
