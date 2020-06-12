//
//  UserNameTextView.swift
//  SUICo
//
//  Created by Dzhek on 12.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import SwiftUI

struct UserNameTextField: View {
    @State private var textFieldData = ""
        
        var body: some View {
                HStack {
                    TextField("Enter a username", text: $textFieldData) {
//                        self.endEditing()
                        print("Username was entered")
                    }
                        .textContentType(.username)
                        .disableAutocorrection(false)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Button(action: { self.textFieldData = "" }) {
                        Image(systemName: "xmark.circle.fill")
                            .padding()
                        }
                        .accentColor(Color(.systemGray3))
                
                }
                .frame(height: 50)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
        
    //    private func endEditing() {
    //        UIApplication.shared.endEditing()
    //    }
}

struct UserNameTextField_Previews: PreviewProvider {
    static var previews: some View {
        UserNameTextField()
            .previewLayout(.sizeThatFits)
    }
}
