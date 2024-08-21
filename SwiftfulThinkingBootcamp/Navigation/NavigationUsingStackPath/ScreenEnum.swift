//
//  ScreenEnum.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 21/08/2024.
//

import Foundation

enum Screen : String, Identifiable { // String - raw Values of type String
    case home
    case detail
    case settings
    
    var id : String {
        self.rawValue
    }
}
