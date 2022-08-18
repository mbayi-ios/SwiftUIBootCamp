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
            .sheet(isPresented: $showNewScreen) {
                NewScreen()
            }
        }
    }
}

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)

            Button {
                presentationMode.wrappedValue.dismiss()
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
