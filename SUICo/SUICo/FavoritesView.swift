//
//  FavoritesView.swift
//  SUICo
//
//  Created by Dzhek on 12.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemTeal)
                Text("Favorites View")
            }
            .edgesIgnoringSafeArea([.top, .bottom])
        }
        .navigationBarTitle("Favorites", displayMode: .automatic)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
