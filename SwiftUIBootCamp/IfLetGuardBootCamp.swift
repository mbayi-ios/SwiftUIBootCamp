//
//  IfLetGuardBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct IfLetGuardBootCamp: View {
    @State var displayText: String? = nil
    @State var currentUserID: String? = nil
    @State var isLoading: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }

                if isLoading {
                    ProgressView()
                }


                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }

    func loadData() {

        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                displayText = "this is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "error: there is no user id"
        }

    }

    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "error: there is no user id"
            return
        }

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            displayText = "this is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootCamp()
    }
}
