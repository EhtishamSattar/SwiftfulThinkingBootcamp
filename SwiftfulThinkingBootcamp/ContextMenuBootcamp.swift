//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .indigo
    var body: some View {
        VStack(alignment: .leading , spacing: 10){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Hello World")
                .font(.headline)
            Text("How to use Context Menue")
                .font(.subheadline)
            
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            
            Button(action:{
                backgroundColor = .green
            }, label: {
                Text("Report Post")
            })
            
            Button(action:{
                backgroundColor = .blue
            }, label: {
                Text("Share Post")
            })
            
            Button(action:{
                backgroundColor = .red
            }, label: {
                Text("Delete Post")
            })
        
        })
    }
    
}

#Preview {
    ContextMenuBootcamp()
}
