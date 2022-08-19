//
//  ListBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 19/08/2022.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "pech", "mango"
    ]
    var body: some View {
        List {
            Section(
                header: Text("Fruits")){
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    })
                }

        }
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
