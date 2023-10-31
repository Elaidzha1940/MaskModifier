//  /*
//
//  Project: MaskModifier
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 31.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State var rating: Int = 3
    
    var body: some View {
        
        VStack {
            ZStack {
                ForEach(1..<6) { index in
                    Image(systemName: "staroflife.fill")
                        .font(.system(size: 35))
                        .foregroundColor(rating == index ? Color.red : Color.gray)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
