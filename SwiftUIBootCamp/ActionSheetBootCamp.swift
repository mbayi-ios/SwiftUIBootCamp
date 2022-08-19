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
        Button("click me") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet
        )
    }

    func getActionSheet() -> ActionSheet {
        return  ActionSheet(title: Text("this is the title"))
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
