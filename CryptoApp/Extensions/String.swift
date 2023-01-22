//
//  String.swift
//  CryptoApp
//
//  Created by yunus olgun on 21.01.2023.
//

import Foundation


extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
