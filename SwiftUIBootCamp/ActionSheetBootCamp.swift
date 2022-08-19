//
//  ActionSheetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    @State var showActionSheet: Bool = false
    @State var ActionSheetOptions: ActionsheetOptions = .isOtherPost

    enum ActionsheetOptions {
        case isMyPost
        case isOtherPost
    }

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    ActionSheetOptions = .isMyPost
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

//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("this is the title!"),
//            message: Text("This is the message"),
//            buttons: [button1, button1, button1, button2, button3])

        let sharedButton: ActionSheet.Button = .default(Text("Share")) {

        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {

        }

        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {

        }

        let cancelButton: ActionSheet.Button  = .cancel()

        let title = Text("What would you like to do?")
        switch ActionSheetOptions {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [sharedButton, reportButton])

        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [sharedButton, reportButton, deleteButton, cancelButton])
        }
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
