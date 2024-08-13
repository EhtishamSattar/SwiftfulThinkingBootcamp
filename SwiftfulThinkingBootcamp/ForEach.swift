//
//  ForEach.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 07/08/2024.
//

import SwiftUI

struct ForEachView: View {
    
    var number: Int = 9
    var body: some View {
        
        // By default Scrool view has indicator set to true 
        ScrollView {
            VStack {
                ForEach(0..<20){index in
                    Text("\(number) * \(index+1) = \(number * (index+1))")
                        .padding()
                        .foregroundStyle(.primary)
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        
                }
            }
        }
    }
}

#Preview {
    ForEachView()
}
