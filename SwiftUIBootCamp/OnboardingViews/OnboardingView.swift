//
//  OnboardingView.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 23/08/2022.
//

import SwiftUI

struct OnboardingView: View {
    // onboarding states:
    /*
     when onboarding state is at:
     0 - welcoming screen
     1 - Add name
     2 - Add age
     3 - add gender
     */

    @State var onboardingState: Int = 0

    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection

                case 1:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.red)

                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)

                }
            }

            //buttons
            VStack {
                Spacer()
                bottomButton

            }
            .padding(30)
        }
    }


}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}


// MARK: COMPONENTS

extension OnboardingView {

    private var bottomButton: some View {
        Text("sign in")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {

            }
    }

    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your amtch online! In this tutorial wea re practising using AppStorage and other SwiftUI Techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
}
