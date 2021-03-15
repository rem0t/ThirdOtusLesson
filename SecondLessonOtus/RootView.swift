//
//  RootView.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 28.02.2021.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        TabView(selection: $router.tabSelection) {
            HomeScreen().tabItem {
                Image(systemName: "star.circle")
                Text("Home")
            }.tag(0)
            ProfileScreen().tabItem {
                HStack {
                    Text("Profile")
                    Image(systemName: "person.circle")
                }
            }.tag(1)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
