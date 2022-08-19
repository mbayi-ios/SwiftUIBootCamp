//
//  sliderBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct sliderBootCamp: View {
    @State var sliderValue: Double = 10.0
    var body: some View {
        VStack {
            Text("Rating: ")
            Text("\(sliderValue)")
            Slider(value: $sliderValue)
                .accentColor(.red)
        }
    }
}

struct sliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        sliderBootCamp()
    }
}
