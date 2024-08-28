//
//  NVmain.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 21/08/2024.
//

import SwiftUI

struct NVmain: View {
    var body: some View {
        TabView{
            Text("Home")
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                
                }
            
            NVBrowseView()
                .tabItem{
                    Image(systemName: "globe")
                    Text("Browse")
                
                }
            
            Text("Profile")
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                
                }
            
            
        }
    }
}

#Preview {
    NVmain()
}
