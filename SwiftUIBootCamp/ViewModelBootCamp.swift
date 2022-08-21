//
//  ViewModelBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModelBootCamp: View {
    @State var fruits: [FruitModel] = [
        FruitModel(name: "Apples", count: 5)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundColor(.red)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
            }
            .navigationTitle("Fruit List")
            .onAppear {
                getFruits()
            }
        }
    }

    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 4)
        let fruit3 = FruitModel(name: "peach", count: 3)

        fruits.append(fruit1)
        fruits.append(fruit2)
        fruits.append(fruit3)

    }
}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
    }
}
