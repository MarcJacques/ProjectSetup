//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Marc Jacques on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: .center)
                
                Image("test")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 100, alignment: .center)
                    .padding()
                
               NavigationLink(
                destination: Text("Second View"),
                label: {
                    ButtonContent(title: "Do Something")
                    
                })
            }
            .navigationTitle("Home")
            
        }
    }
}

struct ButtonContent: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 24))
                .bold()
                .frame(width: 220, height: 50, alignment: .center)
                .background(Color.pink)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
