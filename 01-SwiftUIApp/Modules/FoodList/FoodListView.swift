//
//  FoodListView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 29.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

final class FoodListViewModel: ObservableObject {
    @Published private(set) var filterButtonName = "Switch Faves"
    @Published private(set) var foods = [
        Food(name: "Strawberry", isFav: true),
        Food(name: "Cheese", isFav: false),
        Food(name: "Apple", isFav: true),
        Food(name: "Tomato", isFav: false)
    ]
}

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let isFav: Bool
}

struct FoodListView: View {

    @ObservedObject private var viewModel = FoodListViewModel()
    @State private var favesShowed: Bool = false
    @Binding private var indexForOpening: Int?

    init(indexForOpening: Binding<Int?>) {
        self._indexForOpening = indexForOpening
    }

    var body: some View {
        NavigationView {
            List {
                FilterView(favesShowed: $favesShowed).environmentObject(viewModel)
                ForEach(viewModel.foods.indices) { index in
                    if !self.favesShowed || self.viewModel.foods[index].isFav {
                        self.navigationLink(forIndex: index)
                    }
                }
            }
            .navigationBarHidden(false)
            .navigationBarTitle("Foods")
        }
    }

    private func navigationLink(forIndex index: Int) -> some View {
        let food = viewModel.foods[index]

        return NavigationLink(
            destination: FoodView(foodName: food.name),
            tag: index,
            selection: $indexForOpening
        ) {
            Text(food.name)
        }
    }
}

struct FilterView: View {

    @Binding var favesShowed: Bool
    @EnvironmentObject var viewModel: FoodListViewModel

    var body: some View {

        Toggle(isOn: $favesShowed) {
            Text(viewModel.filterButtonName)
        }
    }
}

struct FoodListView_Previews: PreviewProvider {

    @State static var indexForOpening: Int?

    static var previews: some View {
        FoodListView(indexForOpening: $indexForOpening)
    }
}
