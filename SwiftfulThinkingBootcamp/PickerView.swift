//
//  PickerView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 09/08/2024.
//

import SwiftUI

struct PickerView: View {
    @State var selectedValue : String = "18"
    
    var body: some View {
        VStack{
            HStack{
                Text("Age")
                Text(selectedValue)
            }
        }
        Picker(
            selection: $selectedValue,
            label: Text("Picker"),
            content: {
                ForEach(18..<100){
                    number in
                    Text("\(number)")
                        .font(.title)
                        .tag("\(number)")
                    
                }
            }
            
        )
        .pickerStyle(WheelPickerStyle())
        //.pickerStyle(MenuPickerStyle())
        //.pickerStyle(InlinePickerStyle())
        //.pickerStyle(PalettePickerStyle())
        //.pickerStyle(NavigationLinkPickerStyle())
        
    }
}

#Preview {
    PickerView()
}
