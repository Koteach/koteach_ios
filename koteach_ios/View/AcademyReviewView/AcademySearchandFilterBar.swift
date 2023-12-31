//
//  AcademySearchandFilterBar.swift
//  koteach_ios
//
//  Created by Maggie Li on 11/25/23.
//

import SwiftUI

struct AcademySearchandFilterBar: View {
    var body: some View {
        HStack {
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.black)
            })
            
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Search school name")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .fill(.black.opacity(0.6))
            Spacer()
            
        }
        //
    }
}

#Preview {
    AcademySearchandFilterBar()
}
