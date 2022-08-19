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
        NavigationView {
            List {
                Section(
                    header: Text("Fruits")){
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: {indices, newOffset in
                            fruits.move(fromOffsets:  , toOffset: <#T##Int#>)
                        })
                    }

            }
            .navigationTitle("Grovery List")
            .navigationBarItems(leading: EditButton())
        }
    }

    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
