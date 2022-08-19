//
//  AlertBootCam.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct AlertBootCam: View {
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            Button("Click Here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                //Alert(title: Text("there was an error!"))
                getAlert()

        }
        }
    }

    func getAlert() -> Alert {
        return  Alert(
            title: Text("This is the title"),
            message: Text("here we will describe the error"),
            primaryButton: .cancel(),
            secondaryButton: .destructive(Text("delete"), action: {
                backgroundColor = .red
            }))
    }
}

struct AlertBootCam_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCam()
    }
}
