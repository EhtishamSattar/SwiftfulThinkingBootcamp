//
//  ViewModifier.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 30/09/2024.
//

import SwiftUI

// Custom View Modifier to apply a border
struct ApplyBorder : ViewModifier {
    var color: Color
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding(size)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(color, lineWidth: size)
            )
    }
}

// Extend View to apply the modifier easily
extension View {
    func borderText(color: Color, size: CGFloat) -> some View {
        self.modifier(ApplyBorder(color: color, size: size))
    }
}

struct ViewModifierExample: View {
    var body: some View {
        Text("Hello, World!")
            .borderText(color: Color.black, size: 4) 
    }
}

#Preview {
    ViewModifierExample()
}

