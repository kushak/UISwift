//
//  AuthorView.swift
//  01-SwiftUIApp
//
//  Created by Oleg Shipulin on 30.11.2019.
//  Copyright © 2019 Oleg Shipulin. All rights reserved.
//

import SwiftUI

struct AuthorView: View {

    @State private var showAuthors: Bool = false
    var body: some View {
        Button(action: {
            self.showAuthors = true
        }) {
            Text("About Page")
        }.betterSheet(isPresented: $showAuthors, onDismiss: { print("Dissmsed") }) {
            AboutAuthorView()
        }
    }
}

struct AboutAuthorView: View {

    var body: some View {
        Text("✏️")
    }
}

struct AuthorView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorView()
    }
}
