//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        ZStack {
                    Image("picture")
                //.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/) // set this , so that we can change the color of icon after wards
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.clipped()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
            
                    
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red.opacity(0.5), Color.black.opacity(0.5)]),
                        startPoint: .topTrailing,
                        endPoint: .bottomLeading
                    )
                    .blendMode(.overlay)
                     // Match the frame size to the image
                }
        
        
    }
}

#Preview {
    ImageBootcamp()
}
