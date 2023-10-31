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
            starsView
                .overlay(overlayView.mask(starsView))
        }
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                //.foregroundColor(.yellow)
                    .fill(LinearGradient(colors: [Color.orange, Color.yellow], startPoint: .leading, endPoint: .trailing))
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
                
            }
        }
        .allowsHitTesting(false)
    }
    
    private var starsView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "staroflife.fill")
                    .font(.system(size: 40))
                    .foregroundColor(rating >= index ? Color.orange : Color.gray)
                    .onTapGesture {
                        withAnimation(.easeOut) {
                            rating = index
                            
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
