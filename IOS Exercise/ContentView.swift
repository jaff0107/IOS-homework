//
//  ContentView.swift
//  IOS Exercise
//
//  Created by Jeff Chiu on 2023/4/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("ch1 ch1")
            Text("ch2 ch2")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
