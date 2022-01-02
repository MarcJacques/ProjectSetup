//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Marc Jacques on 1/1/22.
//

import SwiftUI
struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Color.blue
            }
            .navigationTitle("Home")
            
        }
    }
}

struct ActivityView: View {
    var body: some View {
        NavigationView {
            VStack {
                Color.green
                
            }
            .navigationTitle("Activity")
            
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Color.purple
                
            }
            .navigationTitle("Settings")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
           HomeView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
            
            ActivityView()
                .tabItem {
                    Image(systemName: "bell")
                    
                    Text("Activity")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
