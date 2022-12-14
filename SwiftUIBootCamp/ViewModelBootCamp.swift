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

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false

    init(){
        getFruits()
    }

    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }

    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 4)
        let fruit3 = FruitModel(name: "peach", count: 3)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)

            self.isLoading = false
        }
    }
}

struct ViewModelBootCamp: View {
    //    @State var fruitArray: [FruitModel] = [
    //        FruitModel(name: "Apples", count: 5)
    //    ]
    // @StateObject -> USE THIS ON CREATIION / INIT
    // @ObservedObject -> USE THIS FOR SUBVIEWS

    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationView {
            List {

                if fruitViewModel.isLoading {
                    ProgressView()
                } else  {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit List")
            .navigationBarItems( trailing:
                                    NavigationLink(
                                        destination: RandomScreen(fruitViewModel: fruitViewModel),
                                        label: {
                                            Image(systemName: "arrow.right")
                                                .font(.title)
                                        })
            )

        }
    }

}

struct RandomScreen: View {

    @Environment(\.presentationMode) var presentationMode

    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name )
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
        }
    }
}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()

    }
}
