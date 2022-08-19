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

    @State var alertType: MyAlerts?  = nil

    enum MyAlerts {
        case suucess
        case error
    }

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack(spacing: 50) {
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "error uploading video"
                    //alertMessage = "the vidoe could not be uploadded"
                    showAlert.toggle()
                }

                Button("Button 2") {
                    alertType = .suucess
                    //alertTitle = "successfully uploaded video!😄"
                    //alertMessage = "Your video is now public"
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
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .suucess:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))

        default:
            return Alert(title: Text("ERROR"))
        }
//        return Alert(title: Text(alertTitle),
//        message: Text(alertMessage),
//                     dismissButton: .default(Text("ok")))
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
