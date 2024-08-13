//
//  NavigationView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                NavigationLink("Chinese", destination: Chineese())
                NavigationLink("South Indian", destination: Sheet())
                NavigationLink("Desi", destination: Text("Desi Food"))
            }
            .navigationBarTitleDisplayMode(.automatic)
            
            .navigationTitle("Menu")
            //.navigationBarHidden(true)  // hides the title of Navigation View
            .navigationBarItems(leading:
                                    HStack{
                Image(systemName: "pencil.fill").foregroundColor(.green).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Image(systemName: "person.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            },
                                trailing:NavigationLink(
                                    destination: Text("Abcd"),
                                    label: {
                                        Image(systemName: "gear").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    })
            )
            //            .navigationBarItems(
            //                // leading and trailing can contain any custom Views and screens
            //                leading: Text("Food Yard").bold(),
            ////                                HStack{ // this is not Working dont know why
            ////                                    Image(systemName: "pencil.fill")
            ////                                        .foregroundColor(.green)
            ////                                    Image(systemName: "apple.fill")
            ////                                        .foregroundColor(.green)
            ////                                }
            ////                                .zIndex(10),
            //                            trailing: Image(systemName: "person.fill")
            //                        )
            .font(.title2)
            
        }
    }
}

struct Chineese: View {
    
    @Environment(\.presentationMode) var mode
    var body: some View{
        ZStack{
            Color.green
                .navigationBarHidden(true)
            
            VStack {
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .bold()
                    //.font(.title)
                    
                }
                .frame(width: 50, height: 50)
                .background(Color.blue)
                
                Spacer()
                
                Text("Chineese Food")
                

                
                Spacer()
            }
            //.navigationBarHidden(true)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding()
            
            
            
        }
        .frame(alignment: .topLeading)
    }
}
#Preview {
    NavigationViewBootcamp()
}
