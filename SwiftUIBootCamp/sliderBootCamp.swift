//
//  sliderBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct sliderBootCamp: View {
    @State var sliderValue: Double = 3
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                //"\(sliderValue)"
                String(format: "%.1f",  sliderValue)
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            Slider(value: $sliderValue, in: 1...5, step: 0.5)
                .accentColor(.red)
        }
    }
}

struct sliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        sliderBootCamp()
    }
}
