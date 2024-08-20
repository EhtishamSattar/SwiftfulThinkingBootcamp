//
//  onChangeView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 20/08/2024.
//

import SwiftUI

struct onChangeView: View {
    @State  var counter : Int = 0
    var body: some View {
        Button {
            counter += 1
        } label: {
            Text("Increment Count : \(counter)")
                .foregroundColor(.black)
                .font(.title)
        }
        .buttonStyle(BorderedButtonStyle())
        .onChange(of: counter) { oldValue, newValue in
            print("Old value : \(oldValue)\nNew Value : \(newValue)")
        }

    }
}

#Preview {
    onChangeView()
}
