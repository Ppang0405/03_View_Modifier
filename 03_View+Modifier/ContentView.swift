//
//  ContentView.swift
//  03_View+Modifier
//
//  Created by Truong Huu Nguyen on 5/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello, world!") {
            print(type(of: self.body))
        }
        .padding()
        .background(.red)
        .padding()
        .background(.green)
        
    }
}

#Preview {
    ContentView()
}
