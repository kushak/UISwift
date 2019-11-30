//
//  FoodListView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 29.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

struct FoodListView: View {

    @State private var favesShowed: Bool = false
    @Binding private var indexForOpening: Int?
    @ObservedObject private var viewModel: FoodListViewModel

    init(indexForOpening: Binding<Int?>, viewModel: FoodListViewModel) {
        self._indexForOpening = indexForOpening
        self.viewModel = viewModel
    }

    var body: some View {
        NavigationView {
            List {
                filterView
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
}

private extension FoodListView {

    var filterView: some View {
        Toggle(isOn: $favesShowed) {
            Text(viewModel.filterButtonName)
        }
    }

    func navigationLink(forIndex index: Int) -> some View {
        let food = viewModel.foods[index]

        return NavigationLink(
            destination: FoodDetailsModuleBuilder.makeView(foodName: food.name),
            tag: index,
            selection: $indexForOpening
        ) {
            Text(food.name)
        }
    }
}

struct FoodListView_Previews: PreviewProvider {

    @State static var indexForOpening: Int?

    static var previews: some View {
        FoodListModuleBuilder.makeView(
            indexForOpening: $indexForOpening
        )
    }
}
