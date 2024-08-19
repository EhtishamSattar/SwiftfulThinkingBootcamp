//
//  AsyncAwaitContinuation.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 16/08/2024.
//

import SwiftUI

struct AsyncAwaitContinuation: View {
    
    @State var data: String = ""
    
    var body: some View {
        VStack {
            Text(data.isEmpty ? "No data yet" : data)
                .padding()
            
            Button {
                Task {
                    //data = await getData()
                    getData2 {
                        data = "New data fetched"
                    }
                }
            } label: {
                Text("Fetch Data")
            }
            .padding()
            .buttonStyle(BorderedButtonStyle())
        }
    }
    
    func getData() async -> String {
        return await withCheckedContinuation { continuation in
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                let newData = "fetchedData"
                continuation.resume(returning: newData)
            }
        }
    }
    
    func getData2(completion: @escaping() -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            completion()
        }
    }
}

struct AsyncAwaitContinuation_Previews: PreviewProvider {
    static var previews: some View {
        AsyncAwaitContinuation()
    }
}
