//
//  DocumentationBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct DocumentationBootCamp: View {

    // MARK: PROPERTIES

    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]

    @State var showAlert: Bool = false

    // MARK: BODY

    // Working copy - things to do:
    // 1) Fix title
    // 2) Fix title

    /*
     working copy - things to do:
     1) Fix title
     2) Fix alert

     */

    var body: some View {
        NavigationView {
            ZStack {
                Color.red.ignoresSafeArea()
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(
                        trailing: Button("ALERT", action: {
                            showAlert.toggle()
                        })
                    )
                    .alert(isPresented: $showAlert, content: {
                        getAlert(text: "This is the alert!")
                    })
            }
        }
    }
/// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }

    // MARK: FUNCTION

    /// Gets an alert with specified title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but will NOT have a message.
    /// ```
    ///  getAlert(text: "hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warn ing: There is no additional message in this alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

struct DocumentationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootCamp()
    }
}
