//
//  ActionSheetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    @State var showActionSheet: Bool = false
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                    .accentColor(.primary)

            }
            .padding()

            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)

        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet
    )
    }

    func getActionSheet() -> ActionSheet {
        //return  ActionSheet(title: Text("this is the title"))

        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        let button3: ActionSheet.Button = .cancel()

        return ActionSheet(
            title: Text("this is the title!"),
            message: Text("This is the message"),
            buttons: [button1, button1, button1, button2, button3])
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
