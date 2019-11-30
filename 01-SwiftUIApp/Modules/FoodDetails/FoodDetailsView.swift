//
//  FoodView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 29.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

struct FoodView: View {
    let foodName: String
    var body: some View {
        Text("❤️" + foodName)
    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(foodName: "apple")
    }
}
