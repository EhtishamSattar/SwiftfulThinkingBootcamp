//
//  NavigatingToDifferentDataTypes.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 21/08/2024.
//

import SwiftUI

struct NavigatingToDifferentDataTypes: View {
    @State private var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            List{
                ForEach(0..<10) {i in
                    NavigationLink("Select NUmber: \(i)", value: i)
                }
                Spacer()
                ForEach(0..<10) {i in
                    NavigationLink("Select String: \(i)", value: String(i))
                }
            }
            .toolbar{
                Button(action: {
                    path.append(555)
                }, label: {
                    Text("Push Number")
                })
                
                Button(action: {
                    path.append("Hello")
                }, label: {
                    Text("Push String")
                })
            }
            .navigationDestination(for: Int.self) { selection in
                Text("Your Selected number is :\(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("Your Selected String is :\(selection)")
            }
        }
    }
}

#Preview {
    NavigatingToDifferentDataTypes()
}
