//
//  AppStorageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct AppStorageBootCamp: View {
    @State var currentUserName: String?

    var body: some View {
        VStack(spacing: 20) {

            Text(currentUserName ?? "add name here")

            if let name = currentUserName {
                Text(name)
            }

            Button("save".uppercased()){
                currentUserName = "Amby"
            }
        }
    }
}

struct AppStorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootCamp()
    }
}
