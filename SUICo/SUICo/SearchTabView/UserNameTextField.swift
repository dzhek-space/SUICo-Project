//
//  UserNameTextView.swift
//  SUICo
//
//  Created by Dzhek on 12.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import SwiftUI

struct UserNameTextField: View {
    
    @Binding private(set) var textInput: String
    private(set) var placeholder = "Enter a username"
    @State var isTyping: Bool = false
    let action: () -> Void
        
    var body: some View {
        HStack {
            TextField(placeholder,
                      text: $textInput,
                      onEditingChanged: { self.isTyping = $0 },
                      onCommit: action)
                .textContentType(.username)
                .disableAutocorrection(false)
                .multilineTextAlignment(.leading)
                .padding()
            Button(action: { self.textInput = "" }) {
                Image(systemName: "xmark.circle.fill")
                    .padding()
                    .imageScale(.large)
            }
            .accentColor(Color(.systemGray3))
            .opacity(isTyping ? 1 : 0 )
            .animation(.easeIn)
            
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
        UserNameTextField(textInput: .constant("Some Username"), action: {})
            .previewLayout(.sizeThatFits)
    }
}
