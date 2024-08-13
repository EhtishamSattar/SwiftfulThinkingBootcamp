//
//  Sheet.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 08/08/2024.
//

import SwiftUI

struct Sheet: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack{
            //Color.blue.ignoresSafeArea(.all)
            VStack{
                //Color.yellow
                Button {
                    withAnimation(
                        .default
                        .repeatForever(autoreverses: true)
                    ){
                        showSheet.toggle()
                    }
                } label: {
                    Text("Animate")
                    
                }
                .accentColor(.white)
                .frame(width:100, height: 50, alignment: .center)
                .background(Color.blue)
                .cornerRadius(5)
//                .sheet(isPresented: $showSheet, content: {
//                    secondScreen()
//                })
                .fullScreenCover(isPresented: $showSheet, content: {
                    secondScreen()
                })
                
                Spacer()
            }
            
        }
    }
}

struct secondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            Color.blue
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)

            }
            .padding()

        })
            
    }
}

#Preview {
    Sheet()
}
