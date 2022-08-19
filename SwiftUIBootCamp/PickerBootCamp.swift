//
//  PickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct PickerBootCamp: View {
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
    "Most Recent", "Most Popular", "Most Liked"
    ]
    var body: some View {
        Picker(selection: $selection,
               label:
                HStack {
            Text("Filter")
            Text(selection)
            }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: Color.blue, radius: 10, x: 0, y: 10)
               ,
               content: {
            ForEach(filterOptions, id: \.self) {option in
                HStack {
                    Text(option)
                    Image(systemName: "heart.fill")

                }
                .tag(option)
            }
        })
            .pickerStyle(MenuPickerStyle())

//        VStack {
//            HStack {
//                Text("Age: " )
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    //Text("1").tag("1")
//                    //Text("2").tag("12")
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .tag("\(number)")
//                    }
//            })
//                .pickerStyle(WheelPickerStyle())
//                .background(Color.gray.opacity(0.3))
//        }
    }
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}
