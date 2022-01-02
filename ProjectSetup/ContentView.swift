//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Marc Jacques on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    
    let data = [
        "Apples", "Oranges", "Grapes", "Strawberries"
    ]
    var body: some View {
        NavigationView {
            VStack {
                List(data, id: \.self) { fruit in
                    Text(fruit)
                }
                
               NavigationLink(
                destination: Text("Second View").navigationTitle("Second"),
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
