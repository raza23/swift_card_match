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
        return ZStack(content:{
            RoundedRectangle(cornerRadius: 10.0).stroke()
         Text("🐙")
            }).foregroundColor(Color.orange).padding()
        
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
