//
//  textView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 20/08/2024.
//

import SwiftUI

struct textView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .onAppear(perform: {
            print("textView")
        })
        
            
    }
}

#Preview {
    textView()
}
