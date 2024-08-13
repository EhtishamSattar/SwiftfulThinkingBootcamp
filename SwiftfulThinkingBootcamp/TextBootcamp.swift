//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is Swiftful Thinking Bootcamp . I am really enjoying this course and learning alot")
            .font(.body) // this will automatically resize
        
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
//            .underline(color: /*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//            .strikethrough(true, color: Color.green)
//            .italic()
            .font(.system(size: 24, weight: .semibold, design: .monospaced))  // this way of setting font will not automatically resize
        
            //.baselineOffset(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)  // below Spacing of line of paragraph
        
            .baselineOffset(-10.0/*@END_MENU_TOKEN@*/)  //Spacing above the line
        
            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)  //sPACING between the letters
            //.multilineTextAlignment(.leading)//.center .leading , horizontal alignment
        
            .foregroundColor(.red) //text color
        
            .frame(width: 200, height: 100, alignment: .center) // frame/container size of the text , alignment frame ky vertically center me hai yaha
        
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
        
            .minimumScaleFactor(0.8) //Scaling according to the been set font
        
    }
}

#Preview {
    TextBootcamp()
}
