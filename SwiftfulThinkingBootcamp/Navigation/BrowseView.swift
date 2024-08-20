//
//  BrowseView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 20/08/2024.
//

import SwiftUI
import Combine

struct BrowseView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var close : Bool = false
    
    var body: some View {
        
        
        NavigationStack {
            VStack(spacing: 20) {  // Using VStack to arrange the links vertically
                NavigationLink(destination: FirstDestinationView(close : $close)) {
                                    Text("Go to First View")
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                
            }
            .navigationTitle("Browse")
            .navigationBarBackButtonHidden(true)
        }
    }
}


struct FirstDestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var close : Bool
    var body: some View {
        VStack {
            NavigationLink(destination: SecondDestinationView(close : $close)) {
                Text("Go to Second View")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .onChange(of: close) { newValue in
            print(close)
                   if newValue {
                       presentationMode.wrappedValue.dismiss()
                       // Optionally reset the state if needed
                       close = false
                   }
               }
        .navigationTitle("First View")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.blue)
                        .bold()
                        .font(.title)
                }
            }
        }
    }
}

struct SecondDestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var close : Bool
    
    var body: some View {
        VStack {
            NavigationLink(destination: ThirdDestinationView(close : $close)) {
                Text("Go to Third View")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .onChange(of: close) { newValue in
            print(close)
                   if newValue {
                       presentationMode.wrappedValue.dismiss()
                       // Optionally reset the state if needed
                       close = false
                   }
               }
        .navigationTitle("Second View")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.blue)
                        .bold()
                        .font(.title)
                }
            }
        }
    }
}


struct ThirdDestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var close : Bool
    
    let passthrough = PassthroughSubject<Bool, Never>()
    var body: some View {
        VStack {
            Text("Third Destination View")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationTitle("Third View")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                    close.toggle()
                    //sendPassThrough(flag: true)
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.blue)
                        .bold()
                        .font(.title)
                }
            }
        }
    }
    
    func sendPassThrough(flag : Bool){
        passthrough.send((flag))
    }
}

#Preview {
    BrowseView()
}
