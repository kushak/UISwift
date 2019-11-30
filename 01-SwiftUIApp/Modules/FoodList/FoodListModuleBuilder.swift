//
//  FoodListModuleBuilder.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import Foundation
import SwiftUI

enum FoodListModuleBuilder {

    static func makeView(indexForOpening: Binding<Int?>) -> some View {
        return FoodListView(
            indexForOpening: indexForOpening,
            viewModel: FoodListViewModel()
        )
    }
}
