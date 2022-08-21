//
//  AppStorageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct AppStorageBootCamp: View {
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?

    var body: some View {
        VStack(spacing: 20) {

            Text(currentUserName ?? "add name here")

            if let name = currentUserName {
                Text(name)
            }

            Button("save".uppercased()){
                let name: String = "Emily"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootCamp()
    }
}
