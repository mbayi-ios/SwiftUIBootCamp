//
//  ShapesBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 16/08/2022.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
       //Circle()
       // Ellipse()
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
            //.fill(Color.red)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.purple, lineWidth: 5)
            .frame(width: 300, height: 300 )

    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
