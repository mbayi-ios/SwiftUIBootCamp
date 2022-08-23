//
//  IntroView.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 23/08/2022.
//

import SwiftUI

struct IntroView: View {

    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack {
            //background
            RadialGradient(
                gradient: Gradient(colors: [Color(.red), (.purple)]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()

            // if user is signed in
            //show profile view
            //show onboarding view
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                Text("Onboardin View")
            }

        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
