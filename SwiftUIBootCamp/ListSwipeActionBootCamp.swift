//
//  ListSwipeActionBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 25/08/2022.
//

import SwiftUI

struct ListSwipeActionBootCamp: View {
    @State var fruits: [String] = [
        "apple", "oranges"
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true){
                        Button("Archive") {

                        }
                        .tint(.green)
                        Button("save") {

                        }
                        .tint(.blue)
                        Button("Junk") {

                        }
                        .tint(.black)
                    }

                    .swipeActions(edge: .leading,
                                                allowsFullSwipe: true){
                            Button("share") {

                            }
                            .tint(.yellow)

                            }
            }
            //.onDelete(perform: delete)
        }
    }

    func delete(indexSet: IndexSet) {

    }
}

struct ListSwipeActionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootCamp()
    }
}
