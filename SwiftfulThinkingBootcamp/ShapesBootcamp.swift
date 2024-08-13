//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
            .trim(from:0.2, to: 1.0) //trims the part of the circle 0.0 to 1.0 is the scale
        
            .stroke(Color.gray, lineWidth: 30) // if we dont specify the color , it will just display the stroke of the filled color of Circle
        
        
            .fill(Color.green) // fill the circle with color
        
            //.stroke(Color.black, lineWidth: 1) //Outline of circle
        
//          .stroke(Color.gray, style: StrokeStyle(lineWidth: 20, lineCap: .square , dash: [200, 20, 30]))
        
            //.foregroundColor(Color.blue) //kind of fill color
        
                    
        Ellipse()
            .fill(Color.red)
            .frame(width: 100, height: 200)
                    
        Capsule(style: .circular)
            .fill(Color.blue)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200)
            
        
        RoundedRectangle(cornerRadius: 15)
            .frame(width:  200 , height: 100)
                    
            
            
        
    }
}

#Preview {
    ShapesBootcamp()
}
