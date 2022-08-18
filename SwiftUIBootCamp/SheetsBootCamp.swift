//
//  SheetsBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 18/08/2022.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)

            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
        }
        .sheet(isPresented: $showSheet, content: {
            SecondScreen()
        })
    }
}

struct SecondScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)

            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")

                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootCamp()
        //SecondScreen()
    }
}
