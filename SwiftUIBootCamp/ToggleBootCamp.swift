//
//  ToggleBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var toggleIsOn: Bool = true
    var body: some View {
        VStack {
            HStack{
                Text("Status: ")
                Text(toggleIsOn ? "Online": "Offline")
            }
            Toggle(
                isOn: $toggleIsOn,
                   label: {
                       Text("change status")
            })
                .toggleStyle(SwitchToggleStyle(tint: Color.red))

            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootCamp()
    }
}
