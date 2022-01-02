//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Marc Jacques on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("test")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 100, alignment: .center)
                .padding()
            
            Button(action: {
                print("tapped")
            }, label: {
                ButtonContent(title: "Do Something")
                
            })
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
