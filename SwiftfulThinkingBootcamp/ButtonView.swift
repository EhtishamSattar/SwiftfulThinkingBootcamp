//
//  ButtonView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 08/08/2024.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var backgroundColor: Color = Color.black
    
    var body: some View {
        ZStack {
            //Color..edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {
                    print("Button Cliked")
                    self.backgroundColor = backgroundColor == .black ? .yellow : .black
                }) {
                    Text("Turn \(backgroundColor == .black ? "On" : "Off") the light")
                        .font(.title)
                        .bold()
                        .italic()
                        //.foregroundColor(.yellow)
                }
                .accentColor(backgroundColor == .black ? .white : .black)
            }
            .background(backgroundColor)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(backgroundColor)
    }
}

#Preview {
    ButtonView()
}
