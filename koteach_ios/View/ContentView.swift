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
            
            LawChatbotView()
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
