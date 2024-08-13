//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "book.fill")
            .resizable()
            //.aspectRatio(contentMode: .fill) //  takes as much space as allowed in a frame, .fit: fit the frame
            //.scaledToFit() // alternative to aspectratio to fit
        
            .scaledToFill() // use .clipped() to remove overflow of image
        
            .foregroundColor(Color("BookColor"))
            //.font(.system(size: 20)) // hard coded size
        
            .frame(width: 200, height: 200)
            .shadow(color: Color("BookColor"), radius: 15, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        
    }
}

#Preview {
    IconsBootcamp()
}
