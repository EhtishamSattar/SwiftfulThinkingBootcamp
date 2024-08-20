//
//  CheckView1.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 20/08/2024.
//

import SwiftUI

struct CheckView1: View {
    var body: some View {
        VStack{
            Text("First Name")
            Text("Last Name")
            Text("Middle Name")
        }
        .onAppear(perform: {
            print("View 1")
        })
    }
        
}

#Preview {
    CheckView1()
}
