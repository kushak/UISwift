//
//  Food.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import Foundation

struct Food: Identifiable {
    let id = UUID()
    let name: String
    let isFav: Bool
}
