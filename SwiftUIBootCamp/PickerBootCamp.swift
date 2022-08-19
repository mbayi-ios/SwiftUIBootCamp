//
//  PickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct PickerBootCamp: View {
    @State var selection: String = "1"
    var body: some View {
        VStack {
            HStack {
                Text("Age: " )
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    //Text("1").tag("1")
                    //Text("2").tag("12")
                    ForEach(18..<100) { number in
                        Text("\(number)")
                            .tag("\(number)")
                    }
            })
                .pickerStyle(WheelPickerStyle())
                .background(Color.gray.opacity(0.3))
        }
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}
