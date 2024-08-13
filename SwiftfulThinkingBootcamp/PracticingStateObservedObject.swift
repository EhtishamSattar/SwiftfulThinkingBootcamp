//
//  PracticingStateObservedObject.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 12/08/2024.
//

import SwiftUI

class SharedData: ObservableObject {
    @Published var text: String
    init()
    {
        text = "Initilization"
    }    
    
    init(text : String)
    {
        self.text = text
    }
}

struct ThirdView: View {
    @ObservedObject var sharedData: SharedData

    var body: some View {
        VStack {
            Text("Value: \(sharedData.text)")
        }
        .padding()
        .onAppear{sharedData.text = "Noew Updated Value"}
    }
}

struct FirstView: View {
    @ObservedObject var sharedData: SharedData

    func changeValue() {
        sharedData.text = "Updating third view"
    }

    var body: some View {
        VStack {
            ThirdView(sharedData: sharedData)
        }
//        .onAppear(perform: {
//            changeValue()
//        })
        .padding()
    }
}

struct SecondView: View {
    @ObservedObject var sharedData: SharedData

    var body: some View {
        VStack {
            ThirdView(sharedData: sharedData)
        }
        .padding()
    }
}

struct PracticingStateObservedObject: View {
    @StateObject private var sharedData = SharedData()

    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("View1", destination: FirstView(sharedData: sharedData))
                NavigationLink("View2", destination: SecondView(sharedData: sharedData))
                NavigationLink("View3", destination: ThirdView(sharedData: sharedData))

            }
            .navigationBarTitleDisplayMode(.automatic)
            .navigationTitle("Menu")
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "pencil.fill").foregroundColor(.green).font(.title)
                    Image(systemName: "person.fill").font(.title)
                },
                trailing: NavigationLink(
                    destination: Text("Settings"),
                    label: {
                        Image(systemName: "gear").font(.title)
                    }
                )
            )
            .font(.title2)
        }
    }
}




struct AHText : View {
    var text : String = ""
    @State var count : Int = 0
    
    var body : some View {
        
        VStack{
            Text("\(text) : \(count)")
                .onAppear{
                    print(count)
                }
            
            Button(action: {
                count += 1
            }, label: {
                Text("Button : \(count)")
            })
        }
        .onAppear{
            print(count)
        }
        
        
    }
    
    
}
#Preview {
    PracticingStateObservedObject()
}
