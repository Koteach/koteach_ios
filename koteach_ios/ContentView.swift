//
//  ContentView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach (0 ... 10, id: \.self) { listing in Rectangle()
                            .frame(height: 400)
                            .clipShape(Rectangle())
//                            .
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
