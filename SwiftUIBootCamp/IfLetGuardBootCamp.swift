//
//  IfLetGuardBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct IfLetGuardBootCamp: View {
    @State var displayText: String? = nil
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }


                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }

    func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "this is the new data"
        }
    }
}

struct IfLetGuardBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootCamp()
    }
}
