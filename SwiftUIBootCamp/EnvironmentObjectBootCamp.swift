//
//  EnvironmentObjectBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Amby on 21/08/2022.
//

import SwiftUI

//ObservedObject
//StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        self.dataArray.append(contentsOf: ["iphone", "ipad", "imac", "apple watch"])
    }
}

struct EnvironmentObjectBootCamp: View {

    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                    })

                }
            }
            .navigationTitle("iOS devices")
        }
    }
}

struct DetailView: View {
    let selectedItem: String

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()

            NavigationLink(
                destination: FinalView(),
                           label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)

            })

        }
    }
}

struct FinalView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.red]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    Text("item 1")
                    Text("item 2")
                    Text("item 3")
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootCamp()
        //DetailView(selectedItem: "iphone")
        //FinalView()
    }
}
