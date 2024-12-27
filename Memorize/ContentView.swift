//
//  ContentView.swift
//  Memorize
//
//  Created by Akshat  Saladi on 12/21/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "🧑‍💻", "🎉", "🌆", "👋"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

// one card test

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    var body: some View {
        ZStack(alignment: .center ) {
            let base = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 5)
                
                Text(content).font(.largeTitle)
                
            } else {
                RoundedRectangle(cornerRadius: 20)
                
            }
            
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
