//
//  ContentView.swift
//  Card_Matching_Game
//
//  Created by Raza Shareef on 8/11/20.
//  Copyright © 2020 raza_s. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        return HStack(spacing:1.5,content:{
//            HStack puts everything in one view-left to right
            ForEach(0..<4,content: {index in
                CardView(isFaceUp: false)
        
            })
        
        }).foregroundColor(Color.orange).padding().font(Font.largeTitle)
        
    }
}



struct CardView: View{
    var isFaceUp: Bool
    
    
    var body: some View {
        ZStack(content:{
            if isFaceUp {
            RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
            Text("🐙")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
        }
}
































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
