//
//  StepperBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct StepperBootCamp: View {

    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0

    var body: some View {
        VStack {
            Stepper("Add to Cart: \(stepperValue)", value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2") {
                //increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -100)
            }
        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut)
        {
            widthIncrement += amount
        }

    }
}

struct StepperBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootCamp()
    }
}
