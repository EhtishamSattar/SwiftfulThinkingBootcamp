//
//  AnimationView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 08/08/2024.
//

import SwiftUI

struct AnimationView: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        
        VStack {
            Button {
                withAnimation(
                    .default
                    .repeatForever(autoreverses: true)
                ){
                    isAnimated.toggle()
                }
            } label: {
                Text("Animate")
                
            }
            .accentColor(.white)
            .frame(width:100, height: 50, alignment: .center)
            .background(Color.blue)
            .cornerRadius(5)

            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.blue : Color.green)
                .frame(width: isAnimated ? 100 : 300 , height: isAnimated ? 100 : 300)
            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            .offset(y: isAnimated ? 300 : 0)
//            .animation(Animation
//                .default
//                .repeatCount(10)
//                .repeatForever(autoreverses: true)
//            )
            
            
            Spacer()
            
            Rectangle()
                .frame(width: isAnimated ? 350 : 50, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .animation(.spring(
                    response: 0.3,
                    dampingFraction: 0.4,
                    blendDuration: 0.1
                ))
            
            //easein(duration: timing ,easeOut(duration: timin), easeInOut
        
        }
    }
}

#Preview {
    AnimationView()
}
