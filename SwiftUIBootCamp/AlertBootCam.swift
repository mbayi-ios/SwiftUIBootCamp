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

    @State var alertTitle: String = ""
    @State var alertMessage: String = ""

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack(spacing: 50) {
                Button("Button 1") {
                    alertTitle = "error uploading video"
                    alertMessage = "the vidoe could not be uploadded"
                    showAlert.toggle()
                }

                Button("Button 2") {
                    alertTitle = "successfully uploaded video!😄"
                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }



            }
            .alert(isPresented: $showAlert) {
                //Alert(title: Text("there was an error!"))
                getAlert()
            }
        }
    }

    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle),
        message: Text(alertMessage),
                     dismissButton: .default(Text("ok")))
//        return  Alert(
//            title: Text("This is the title"),
//            message: Text("here we will describe the error"),
//            primaryButton: .cancel(),
//            secondaryButton: .destructive(Text("delete"), action: {
//                backgroundColor = .red
//            }))
    }
}

struct AlertBootCam_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCam()
    }
}
