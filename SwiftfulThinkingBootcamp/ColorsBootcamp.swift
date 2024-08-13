//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //Color(UIColor.secondarySystemBackground)
                //Color.primary
                //Color.secondary
                
                
                //After addding a cutom color for light and dark color in assets
                Color("CustomColor")
            )
            .shadow(color: Color("CustomColor"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
            .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    ColorsBootcamp()
}
