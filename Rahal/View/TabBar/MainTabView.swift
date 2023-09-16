//
//  MainTabView.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-16.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            SavedView()
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "bookmark")
                }.tag(2)

            UserProfileView()
                .onAppear {
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(3)
        }
        .accentColor(Color("CustomDarkGreenColor"))
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
