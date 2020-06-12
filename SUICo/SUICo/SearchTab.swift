//
//  SearchTab.swift
//  SUICo
//
//  Created by Dzhek on 12.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import SwiftUI

struct SearchTab: View {
    
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Background()
                VStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color(.systemGray5))
                        .frame(width: 200, height: 200)
                        .padding(.top, 80)
                        .padding(.bottom, 48)
                    UserNameTextField()
                        .padding(.horizontal, 50)
                    Spacer()
                    NavigationLink(destination: FavoritesView(), tag: 1, selection: $selection) {
                        
                        Button(action: {
                            print("login tapped")
                            self.selection = 1
                        }) {
                            Text("Get Followers")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                                        .fill(Color.green)
                            )
                        }
                        
//                        Text("Get Followers")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                            .padding()
//                            .frame(height: 50)
//                            .frame(maxWidth: .infinity)
//                            .background(
//                                RoundedRectangle(cornerRadius: 12, style: .continuous)
//                                    .fill(Color.green)
//                        )
                    }
                    .padding(.horizontal, 50)
                    .padding(.bottom, 50)
                }
                
            }
            .edgesIgnoringSafeArea(.top)
            .onTapGesture { self.endEditing() }
        }

    }
    
    private func endEditing() {
        UIApplication.shared.endEditing()
//        UIApplication.shared.windows.forEach { $0.endEditing(false) }
    }
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}
