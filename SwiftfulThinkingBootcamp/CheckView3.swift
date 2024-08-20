//
//  CheckView3.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 20/08/2024.
//

import SwiftUI

struct CheckView3: View {
    var body: some View {
        VStack{
            Button {
                
            } label: {
                Text("Button")
            }
            .buttonStyle(BorderedButtonStyle())
            .frame(maxWidth: .infinity)
            .background(.blue)
            .foregroundColor(.white)
            .padding()
            
        }
        .onAppear(perform: {
        print("View 3")
        })
        
        
    }
}

#Preview {
    CheckView3()
}
