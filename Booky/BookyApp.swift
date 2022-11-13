//
//  BookyApp.swift
//  Booky
//
//  Created by Ryan Scott on 11/12/22.
//

import SwiftUI

@main
struct BookyApp: App {
    var body: some Scene {
        WindowGroup {
            TabView
            {
                FeedScene()
                    .tabItem {
                        Image(systemName: "house")
                        
                        Text("Feed")
                    }
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        
                        Text("Settings")
                    }
            }
        }
    }
}
