//
//  ConditionalBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 18/08/2022.
//

import SwiftUI

struct ConditionalBootCamp: View {

    @State var showCircle: Bool = false

    var body: some View {
        VStack (spacing: 20){
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }

            if showCircle == true {
                Circle()
                    .frame(width: 100, height: 100)
            }


        }
    }
}

struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}
