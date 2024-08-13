//
//  ObservedStatePractice2.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 12/08/2024.
//

import SwiftUI

class Data : ObservableObject {
    @Published var apiData : Int = 0
    
}
struct View1 : View {
    @ObservedObject var viewone : Data
    var body: some View {
        VStack{
            Text("ONe :\(viewone.apiData)")
            View2(viewtwo: viewone)

        }
    }
}
struct View2 : View {
    @ObservedObject var viewtwo : Data
    var body: some View {
        VStack{
            Text("Two : \(viewtwo.apiData)")
            View3(viewthree: viewtwo)
            
        }
    }
}
struct View3 : View {
    @ObservedObject var viewthree : Data
    var body: some View {
        VStack{
            Text("Three : \(viewthree.apiData)")
            View4(viewfour: viewthree)
        }
    }
}
struct View4 : View {
    @ObservedObject var viewfour : Data
    var body: some View {
        VStack{
            Text("Four : \(viewfour.apiData)")
            Button {
                viewfour.apiData += 1
            } label: {
                Text("Increment count from fourth View")
            }
        }
    }
}

struct ObservedStatePractice2: View {
    @StateObject var apidata = Data()
    
    var body: some View {
        View1(viewone: apidata)
    }
}

#Preview {
    ObservedStatePractice2()
}
