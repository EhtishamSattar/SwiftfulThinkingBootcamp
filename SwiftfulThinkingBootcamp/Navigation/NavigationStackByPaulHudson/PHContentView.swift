//
//  PHContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 21/08/2024.
//

import SwiftUI

struct PHContentView: View {
    
    @State private var path = [Int]()
    
    
    var body: some View {
        NavigationStack(path: $path){
            VStack{
                Button {
                    path.append(64)
                } label: {
                    Text("Show 32")
                }
                
                Button {
                    path = [32, 64]
                } label: {
                    Text("Show 32 and 64")
                }
                
                Button {
                    path.append(64)
                } label: {
                    Text("Show 64")
                }

                
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    PHContentView()
}
