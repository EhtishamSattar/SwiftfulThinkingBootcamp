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
                    Text("Browse")
                
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                
                }
            
            
        }
    }
}

#Preview {
    NavigationUsingTabView()
}
