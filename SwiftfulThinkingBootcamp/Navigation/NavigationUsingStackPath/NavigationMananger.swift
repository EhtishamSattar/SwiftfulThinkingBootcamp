//
//  NavigationMananger.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 21/08/2024.
//

import Foundation

class NavigationManager: ObservableObject {
    @Published var path = [Screen]() // () - this is how to initialize array of String as Empty
}
