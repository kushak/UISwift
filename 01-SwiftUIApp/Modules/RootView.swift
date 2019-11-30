//
//  RootView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 29.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

enum TabType: Hashable {
    case start
    case foodList
    case author
}

struct RootView: View {

    @State private var tab = TabType.start
    @State private var foodOpeningIndex: Int?

    var body: some View {
        TabView(selection: $tab) {
            startView
            foodListView
            authorView
        }
    }
}

private extension RootView {

    var startView: some View {
        StartModuleBuilder.makeView(tab: $tab, foodOpeningIndex: $foodOpeningIndex)
            .tabItem {
                VStack {
                    Image(systemName: "bolt")
                    Text("Start")
                }
        }
        .tag(TabType.start)
    }

    var foodListView: some View {
        FoodListModuleBuilder.makeView(indexForOpening: $foodOpeningIndex)
            .tabItem {
                VStack {
                    Image(systemName: "suit.heart")
                    Text("Food")
                }
        }
        .tag(TabType.foodList)
    }

    var authorView: some View {
        AuthorView()
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("Author")
                }
        }
        .tag(TabType.author)
    }

}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
