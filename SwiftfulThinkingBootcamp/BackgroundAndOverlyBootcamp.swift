//
//  BackgroundAndOverlyBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct BackgroundAndOverlyBootcamp: View {
    var body: some View {
        Image("picture")
        
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .fill(Color.white)
                    //.stroke(Color.green , style: StrokeStyle(lineWidth: 100, dash: [10]))
                    .stroke(Color.green, lineWidth: 10)
                    .opacity(0.5)
                    .overlay(
                        Text("Playing...")
                            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .font(.title)
                            .italic()
                            .foregroundColor(Color.black)
                    )
        
                
            )
    }
}

#Preview {
    BackgroundAndOverlyBootcamp()
}
