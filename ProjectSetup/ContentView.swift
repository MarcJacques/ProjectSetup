//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Marc Jacques on 1/1/22.
//

import SwiftUI
struct ActivityView: View {
    var data = (0...1000).map({ "Grid Item \($0)" })
    
    var columns: [GridItem] = [
        GridItem(.fixed(100),
                 spacing: 20,
                 alignment: .center),
        GridItem(.fixed(100),
                 spacing: 20,
                 alignment: .center),
        GridItem(.fixed(100),
                 spacing: 20,
                 alignment: .center),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(data, id: \.self) { item in
                            ZStack {
                                Circle()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .foregroundColor(Color.purple)
                                Text(item)
                            }.padding()
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView: View {
    @State var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Your Info"), footer: Text("Enter your info to create an account.")) {
                        TextField("First Name", text: $text)
                        TextField("Last Name", text: $text)
                        TextField("Email Address", text: $text)
                        TextField("Home Address", text: $text)
                    }
                    
                    Section(header: Text("Create Password")) {
                        SecureField("New Password", text: $text)
                        SecureField("Confirm Password", text: $text)
                        
                    }
                }
                
                Spacer()
                
            }
            .padding()
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
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
