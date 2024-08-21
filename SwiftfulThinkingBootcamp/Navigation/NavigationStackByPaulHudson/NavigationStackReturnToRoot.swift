//
//  NavigationStackReturnToRoot.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 21/08/2024.
//

import SwiftUI

struct DetailViewOne: View {
    var number : Int
    @Binding var path: [Int]
    //Alternative : @Binding var path: NavigationPath
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar{
                Button {
                    path.removeAll()
                    //Alternative: path = NavigationPath()
                } label: {
                    Text("Home")
                }

            }
    }
}
struct NavigationStackReturnToRoot: View {
    @State private var path = [Int]()
    
    //Alternative: @State private var path = NavigationPath()
    var body: some View {
        NavigationStack (path: $path) {
            DetailViewOne(number: 0, path: $path)
                .navigationDestination (for: Int.self) {i in
                    DetailViewOne(number: i, path: $path)
                }
        }
    }
}

#Preview {
    NavigationStackReturnToRoot()
}
