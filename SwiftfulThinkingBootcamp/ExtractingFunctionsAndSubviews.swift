//
//  ExtractingFunctionsAndSubviews.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 08/08/2024.
//

import SwiftUI

struct ExtractingFunctionsAndSubviews: View {
    @State private var backgroundColor: Color = Color.black
    
    var body: some View {
        ZStack {
            
            // Custom subView of Current Structure
            //ButtonView
            StructtButtonView(backgroundColor: $backgroundColor)
        }
        .background(backgroundColor)
    }
    
    var ButtonView: some View {
        
        // We can also add variables here just like other Views
        // this view can use other Views as well (NestED VIEWS)
        
        VStack {
            Button(action: {
                // this is the function that will be called when clicking the button
                handleLight()
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
    
    func handleLight(){
        print("Button Cliked")
        self.backgroundColor = backgroundColor == .black ? .yellow : .black
    }
}


struct StructtButtonView : View {
    @Binding var backgroundColor: Color
    //@Binding func handleLight () -> Void
    
    var body: some View{
        VStack {
            Button(action: {
                // this is the function that will be called when clicking the button
                //handleLight()
                
                backgroundColor = backgroundColor == .black ? .yellow : .black
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
    
}
#Preview {
    ExtractingFunctionsAndSubviews()
}
