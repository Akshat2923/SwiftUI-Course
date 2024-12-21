//
//  ContentView.swift
//  Memorize
//
//  Created by Akshat  Saladi on 12/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            
        }
        
        .foregroundColor(.orange)
        .imageScale(.small)
        .padding()
    }
}

// one card
struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 10)
                
                Text("🧑‍💻").font(.largeTitle)
                
            } else {
                RoundedRectangle(cornerRadius: 20)
               
            }
            
        }
    }
}

#Preview {
    ContentView()
}
