//
//  TextFieldView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct TextFieldView: View {
    
    
    @State var textValue :String = ""
    @State var textValues : [String] = []
    var body: some View {
        VStack{
            TextField("Hello, World!", text: $textValue)
                .padding()
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                //.padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .font(.headline)
                .foregroundColor(.black)
            
            Button(action: {
                textValues.append(textValue)
                textValue = ""
            }
            , label: {
                Text("Save")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.cornerRadius(10))
                    .foregroundColor(.white)
            })
            
        }
        .padding()
        
        ForEach(textValues, id: \.self){ value in
                Text(value)
        }
        
        
        
        
    }
}

#Preview {
    TextFieldView()
}
