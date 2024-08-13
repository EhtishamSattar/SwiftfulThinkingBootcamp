//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //Color.green
//                LinearGradient(colors: [Color.green, Color.yellow], startPoint: .topLeading, endPoint: .bottomTrailing) // top bottom will make a vetical linear gradient , topleading will start from left top and go towards right bottom
//                
//                RadialGradient(colors: [Color.green, Color.yellow], center: .topLeading, startRadius: 5, endRadius: 500)
                
                AngularGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: .center, angle: .degrees(180 + 45)) //center sy 225 ky angle jitna bny gha wo fgradient me aye ghabaki blurr,  180 sy zya angel nhi dy sakty is liye aesy kr rhy
            )
            .frame(width: 300, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GradientsBootcamp()
}
