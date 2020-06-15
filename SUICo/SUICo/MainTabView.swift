//
//  MainTabView.swift
//  SUICo
//
//  Created by Dzhek on 11.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    
    @State var navBarIsHidden = true
    
    var body: some View {
        TabView {
            SearchTab()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                    Text("Search")
            }
            NavigationView {
                Color(.systemIndigo)
                    .navigationBarTitle("Favorites", displayMode: .inline)
                    .edgesIgnoringSafeArea([.top, .bottom])
            }
            .tabItem {
                Image(systemName: "star")
                    .imageScale(.large)
                Text("Favorites")
            }
        }
        .accentColor(.blue)
    }
    
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
