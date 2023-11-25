//
//  AcademyReviewView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
// Academy Review View
//

import SwiftUI

struct AcademyReviewView: View {
    var body: some View {
        NavigationStack {
            AcademySearchandFilterBar()

            ScrollView {
                LazyVStack (spacing: 30) {
                    ForEach (0 ... 10, id: \.self) { listing in Rectangle()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        Text("aaaAAA")
                            .lato(family: .Black, size: 20)
                        
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    AcademyReviewView()
}
