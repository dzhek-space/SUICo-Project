//
//  UIApplication+Keyboard.swift
//  SUICo
//
//  Created by Dzhek on 12.06.2020.
//  Copyright © 2020 Dzhek. All rights reserved.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
