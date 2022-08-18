//
//  TernaryBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 18/08/2022.
//

import SwiftUI

struct TernaryBootCamp: View {
    @State var isStartingState: Bool = false
    var body: some View {

        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 100 : 100)
        }
    }
}

struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}
