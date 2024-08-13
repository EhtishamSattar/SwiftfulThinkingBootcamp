//
//  AlertsView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct AlertsView: View {
    
    @State var showAlert : Bool = false
    @State var backgroundColor : Color = .green
    var body: some View {
        
        Button(action: {
            showAlert.toggle()
        }, label: {
            Text("Button")
        })
        .alert(isPresented: $showAlert, content: {
            //Alert(title: Text("There was an error"))
            Alert(title: Text("Error"), message: Text("There is an Erorrrr"), primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red
            }), secondaryButton: .cancel(Text("Cancel"), action: {
                backgroundColor = .green
            }))
        })
        backgroundColor
    }
    
}

#Preview {
    AlertsView()
}
