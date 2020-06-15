//
//  Background.swift
//  SUICo
//
//  Created by Dzhek on 12.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import SwiftUI

struct Background: View {
    
    var body: some View {
        ZStack {
            ContributionGraph()
            Color(.systemTeal)
                .layoutPriority(1)
                .blendMode(.colorBurn)
        }

    }
    
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
            .previewLayout(.sizeThatFits)
    }
}

struct ContributionGraph: View {
    
    var rows: Int = Int(UIScreen.main.bounds.height) / 25
    var columns: Int = Int(UIScreen.main.bounds.width) / 25
    var randomValue: Double { self.isOnAppear ? Double.random(in: 0...1) : 0 }
    var showContributionGraph: Animation {
        Animation
            .linear(duration: randomValue / randomValue)
            .delay(randomValue / randomValue)
    }
    
    @State var isOnAppear = false
    
    var body: some View {
        
        HStack(spacing: 0) {
            ForEach( 0 ..< columns ) { _ in
                VStack(spacing: 0) {
                    ForEach( 0 ..< self.rows ) { _ in
                        ZStack {
                            RoundedRectangle(cornerRadius: 4, style: .continuous)
                                .fill(Color(.systemGray6))
                                .frame(width: 22, height: 22)
                                .padding(1.5)
                                .opacity(self.randomValue)
                                .animation(self.showContributionGraph)
                        }
                    }
                }
            }
            
        }.onAppear{ self.isOnAppear.toggle() }
    }
}
