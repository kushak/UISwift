//
//  FoodDetailsView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 29.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

struct FoodDetailsView: View {
    let foodName: String
    var body: some View {
        Text("❤️" + foodName)
    }
}

struct FoodDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailsView(foodName: "apple")
    }
}
