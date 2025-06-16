//
//  ContentView.swift
//  03_View+Modifier
//
//  Created by Truong Huu Nguyen on 5/6/25.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let columns: Int
    let rows: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
                ForEach(0..<rows, id: \.self) { row in
                    HStack {
                        ForEach(0..<columns, id: \.self) { column in
                            content(row, column)
                        }
                    }
                }
    }
}

struct ContentView: View {
    var body: some View {
        GridStack(columns: 4, rows: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row), C\(col)")
            
        }
        
    }
}

#Preview {
    ContentView()
}
