//
//  ContentView.swift
//  03_View+Modifier
//
//  Created by Truong Huu Nguyen on 5/6/25.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(.horizontal)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    
    func titleStyle() -> some View {
        self.modifier(Title())
    }
    
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Hello, world")
                .titleStyle()
            
            Color.blue
                .frame(width: 200, height: 100)
                .watermarked(with: "Hacking with Swift")
        }
        
    }
}

#Preview {
    ContentView()
}
