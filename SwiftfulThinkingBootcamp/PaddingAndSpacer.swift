//
//  PaddingAndSpacer.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct PaddingAndSpacer: View {
    var body: some View {
        
        VStack{
            Text("Hello, World!")
                //.padding() // same as below
//                .padding(.all, 10.0)
//                //.cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
//                .frame(width: .infinity, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.largeTitle)
                .foregroundColor(Color.black)
                
            
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white // this should be conditionally set if we the background color of VStack to be white
                .shadow(color: Color.primary.opacity(0.5),
                       radius: 20)
            )
        
        
    }
}

#Preview {
    PaddingAndSpacer()
}
