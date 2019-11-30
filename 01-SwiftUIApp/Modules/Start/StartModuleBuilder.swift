//
//  StartModuleBuilder.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

enum StartModuleBuilder {

    static func makeView(tab: Binding<TabType>, foodOpeningIndex: Binding<Int?>) -> some View {
        return StartView(tab: tab, foodOpeningIndex: foodOpeningIndex)
    }
}
