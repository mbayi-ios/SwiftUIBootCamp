//
//  AlertBootCam.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct AlertBootCam: View {
    @State var showAlert: Bool = false
    var body: some View {
        Button("Click Here") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            //Alert(title: Text("there was an error!"))
            Alert(
                title: Text("This is the title"),
                message: Text("here we will describe the error"),
                primaryButton: .cancel(),
                secondaryButton: .destructive(Text("delete")))
        }
    }
}

struct AlertBootCam_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCam()
    }
}
