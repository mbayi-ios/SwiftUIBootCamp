//
//  DatePickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct DatePickerBootCamp: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        DatePicker("select a Date", selection: $selectedDate)
            .accentColor(Color.red)
            .datePickerStyle(
                //CompactDatePickerStyle()
                //GraphicalDatePickerStyle()
                WheelDatePickerStyle()
            )
    }
}

struct DatePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootCamp()
    }
}
