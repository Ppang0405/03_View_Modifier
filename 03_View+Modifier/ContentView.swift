//
//  ContentView.swift
//  03_View+Modifier
//
//  Created by Truong Huu Nguyen on 5/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.orange)
    }
}

#Preview {
    ContentView()
}
