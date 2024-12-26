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

// one card test

struct CardView: View {
    @State var isFaceUp = false
    var body: some View {
        ZStack(alignment: .center ) {
            let base = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 10)
                
                Text("🧑‍💻").font(.largeTitle)
                
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
