//
//  ContentView.swift
//  ProjectSetup
//
//  Created by Marc Jacques on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
            
            HStack(alignment: .top, spacing: 100) {
                Text("First")
                
                Text("Second")
                
                Text ("Third")
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
