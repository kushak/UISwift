//
//  StartView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

struct StartView: View {

    @Binding var link: DeepLink
    @Binding var foodOpeningIndex: Int?

    var body: some View {
        Button(action: {
            self.link = .foodList
            self.foodOpeningIndex = 2
        }) {
            Text("Start")
        }
    }
}

struct StartView_Previews: PreviewProvider {

    @State static var link: DeepLink = .start
    @State static var foodOpeningIndex: Int? = nil

    static var previews: some View {
        StartView(link: $link, foodOpeningIndex: $foodOpeningIndex)
    }
}
