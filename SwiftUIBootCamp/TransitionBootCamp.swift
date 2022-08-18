//
//  TransitionBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 18/08/2022.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .opacity(showView ? 1.0 : 0.0)
                .animation(.easeInOut)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
