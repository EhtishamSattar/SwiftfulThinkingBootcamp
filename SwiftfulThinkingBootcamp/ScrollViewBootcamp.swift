//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 08/08/2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    
    let  number: Int = 10
    var body: some View {
        
        
        ScrollView(.horizontal , showsIndicators: true) {
            HStack {
                ForEach(1..<11){index in
                    Text("\(number) * \(index) = \(number * (index))\n\(number) multiplies by \(index) equals \(number * (index))")
                        .padding()
                        .foregroundStyle(.primary)
                        .bold()
                        .frame(width: 500, height: 450, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            }
            
        }
        Spacer(minLength: 30)
        
        // indicator is the bar that follows the scrolling
        ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            LazyVStack{ // loADS THE DATA WHEN NEEDED
                ForEach(1..<11){ index in
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay{
                            Text("\(index)")
                                .font(.title)
                                .foregroundStyle(.indigo)
                                .fontWeight(.bold)
                        }
                        .shadow(color: .indigo, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    
                }
            }
            
        })
    }
}

#Preview {
    ScrollViewBootcamp()
}
