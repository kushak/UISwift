//
//  RootView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 29.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

enum DeepLink: Hashable {
    case start
    case foodList
    case author
}

struct RootView: View {

    @State private var link = DeepLink.start
    @State private var foodOpeningIndex: Int?

    var body: some View {
        TabView(selection: $link) {
            StartView(link: $link, foodOpeningIndex: $foodOpeningIndex)
                .tabItem {
                    VStack {
                        Image(systemName: "bolt")
                        Text("Start")
                    }
            }
            .tag(DeepLink.start)

            FoodListView(indexForOpening: $foodOpeningIndex)
                .tabItem {
                    VStack {
                        Image(systemName: "suit.heart")
                        Text("Food")
                    }
            }
            .tag(DeepLink.foodList)

            AuthorView()
                .tabItem {
                    VStack {
                        Image(systemName: "star")
                        Text("Author")
                    }
            }
            .tag(DeepLink.author)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
