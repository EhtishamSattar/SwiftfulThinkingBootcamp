//
//  NavigationStack.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 13/08/2024.
//

import SwiftUI

// Navigation Stack is the new ersion for NavIgationvIEW

// Navigation Stack provides lazy loading for the secondary Screens so that it loads when being used or called

struct NavigationStackView: View {
    let fruits = ["Apple", "Orange","Bananas"]
    
    @State private var stackpath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackpath) {
            ScrollView{
                VStack(spacing: 10){
                    
                    Button {
                        stackpath.append(contentsOf: ["Cocunut", "Watermelom","Mango"])  // the     Screen will navigate tot he end of the stackpath and can be navigate back to Watermelon Cocunut
                    } label: {
                        Text("Fruits Bucket")
                    }

                    ForEach(fruits, id: \.self) {fruit in
                        NavigationLink(value: fruit){
                            Text(fruit)
                        }
                    }
                    ForEach(0..<10){ x in
                    
                        NavigationLink(value: x) {
                            Text("Click me")
                        }
//                        NavigationLink {
//                            MySecondScreen(value: x)
//                        } label: {
//                            Text("Click me")
//                        }
                        
                    }
                    .navigationTitle("Navigation Stack")
                    .navigationDestination(for: Int.self) { value in  // Destination for Integer
                        MySecondScreen(value: value)
                    }
                    .navigationDestination(for: String.self) { fruit in  // Destination for String
                        Text("Another Screen: \(fruit)")
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Image(systemName: "xmark")
                        }
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            Image(systemName: "house.fill")
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "gear")
                        }
                        
                        ToolbarItem(placement: .bottomBar) {
                            Image(systemName: "person.fill")
                        }
                        
                        ToolbarItem(placement: .keyboard) {
                            Image(systemName: "heart.fill")
                        }
                    }
                    .toolbarTitleMenu {  // Displays the menu over clicking the toolbar Title
                        Button {
                            stackpath.append("Screen one")
                        } label: {
                            Text("Screen One")
                        }
                        
                        Button {
                            stackpath.append("Screen two")
                        } label: {
                            Text("Screen Two")
                        }

                    }
                    
                    TextFieldView() // when the keyboear Appear the Tool bar item with placement .keyboard appears
                    
                }
            }
            
            
        }
    }
}

struct MySecondScreen: View {
    let value : Int
    
    init(value : Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
        
    }
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackView()
}
