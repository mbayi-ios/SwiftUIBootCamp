//
//  sliderBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct sliderBootCamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                //"\(sliderValue)"
                String(format: "%.1f",  sliderValue)
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
            minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5") ,
                label: {
                    Text("Title")
                })
                .accentColor(.red)

        }
        .padding(.horizontal, 50)
    }
}

struct sliderBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        sliderBootCamp()
    }
}
