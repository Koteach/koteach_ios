//
//  AcademyReviewView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
// Academy Review View
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            AcademyReviewView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Hagwon")
                }
            
            VStack {
                AcademySearchandFilterBar()
                
                ScrollView {
                    LazyVStack (spacing: 30) {
                        ForEach (0 ... 10, id: \.self) { listing in Rectangle()
                                .frame(height: 400)
                                .foregroundColor(.green)
                                .clipShape(RoundedRectangle(cornerRadius: 100))
                            
                        }
                    }
                    .padding()
                }
            }
            .tabItem {
                Image(systemName: "character.bubble")
                Text("Chatbot")
                
            }
            
            CalculatorView()
            .tabItem {
                Image(systemName: "dollarsign.square")
                Text("Calculator")
            }
        }
    }
    
}

#Preview {
    AcademyReviewView()
}
