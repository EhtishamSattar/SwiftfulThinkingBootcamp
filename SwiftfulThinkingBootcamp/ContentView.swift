//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 06/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(Color.green) // added b=through library
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
