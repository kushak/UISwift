//
//  FoodDetailsModuleBuilder.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

enum FoodDetailsModuleBuilder {

    static func makeView(foodName: String) -> some View {
        return FoodDetailsView(foodName: foodName)
    }
}
