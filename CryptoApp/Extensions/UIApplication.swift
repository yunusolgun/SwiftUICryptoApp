//
//  UIApplication.swift
//  CryptoApp
//
//  Created by yunus olgun on 14.01.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
