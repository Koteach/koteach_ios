//
//  AcademyDetailView.swift
//  koteach_ios
//
//  Created by Maggie Li on 11/25/23.
//

import SwiftUI

struct AcademyDetailView: View {
    var body: some View {
        VStack (spacing:8) {
            Rectangle()
                .stroke(lineWidth: 0.5)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .black .opacity(0.5), radius: 2)
            
            //Academy details
            
            HStack {
                ZStack (alignment: .leading) {
                    Text("")
                        .font(.title)
                    
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    AcademyDetailView()
}
