//
//  NavigationUsingTabView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Mac on 20/08/2024.
//

import SwiftUI

struct NavigationUsingTabView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                
                }
            
            BrowseView()
                .tabItem{
                    Image(systemName: "globe")
                    Text("Home")
                
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Home")
                
                }
            
            
        }
    }
}

#Preview {
    NavigationUsingTabView()
}
