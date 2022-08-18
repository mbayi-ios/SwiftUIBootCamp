//
//  PopoverBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 18/08/2022.
//

import SwiftUI

struct PopoverBootCamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)

            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }

            //METHOD 2 - TRANSITION
            ZStack {
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())

                }
            }
            .zIndex(2.0)

        }
    }
}

struct NewScreen: View {
    //@Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)

            Button {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
            }

        }
    }
}

struct PopoverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootCamp()
        //NewScreen()
    }
}
