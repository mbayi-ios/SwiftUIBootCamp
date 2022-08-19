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

    @State var veggies: [String] = [
        "tomatoes", "potatoes"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ){
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.callout)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }

                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                }

            }
            .accentColor(.green)
            //.listStyle(GroupedListStyle())
            .navigationTitle("Grovery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }

    var addButton: some View {
        Button("Add", action:{
            add()
        })
    }

    func add() {
        fruits.append( "coconut")
    }

    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices , toOffset: newOffset)
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
