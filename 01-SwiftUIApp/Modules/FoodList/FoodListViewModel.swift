//
//  FoodListViewModel.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
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
