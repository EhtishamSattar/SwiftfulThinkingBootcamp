//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        VStack {  // have default spacing
            Rectangle().fill(Color.red)
            Circle().fill(Color.blue)
            Ellipse().fill(Color.green)
        }
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Rectangle()
            Circle()
            Ellipse()

        })
        HStack{
            Rectangle()
            Circle()
            Ellipse()
        }
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
            Rectangle().fill(Color.red)
            Circle().fill(Color.blue)
            Ellipse().fill(Color.green)
        })
        ZStack{
            Rectangle()
            Circle()
            Ellipse()
            
        }
        
        ZStack(alignment: .trailing, content: {
            Rectangle().fill(Color.red)
            Circle().fill(Color.blue)
            Ellipse().fill(Color.green)
        })
        
        ZStack{
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 150)
            
            VStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack{
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(Color.indigo)
                        .frame(width: 100, height: 100)
                }
                
                
            }
            
        }
    }
}

#Preview {
    StacksBootcamp()
}
