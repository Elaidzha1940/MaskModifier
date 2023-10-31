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
    @State var rating: Int = 4
    
    var body: some View {
        
        VStack {
            starsView
                .overlay {
                    overlayView
                }
        }
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
                
            }
        }
    }
    
    private var starsView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "staroflife.fill")
                    .font(.system(size: 35))
                    .foregroundColor(rating >= index ? Color.orange : Color.gray)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
