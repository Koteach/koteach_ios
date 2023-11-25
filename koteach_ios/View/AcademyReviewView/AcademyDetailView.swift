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
                /*frame(height: 320)*/
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .black .opacity(0.5), radius: 2)
            
            //Academy details
            
            HStack (alignment: .top){
                // Details
                VStack(alignment: .leading) {
                    Text("Hagwon Name")
                        .lato(family: .Bold, size: 15)
                        .foregroundColor(.black)
                    
                    Text("Location, City")
                        .foregroundStyle(.gray)
                        .lato(family: .Light, size: 10)
                    
                    HStack {
                        Image(systemName: "star.fill")
                        Text("4.5")
                            .lato(family: .Light, size: 10)
                    }
                        
                    Text("Comments asdsdfwregegeg")
                        .lato(family: .Regular, size: 12)
                        .foregroundColor(.gray)
            
                
                }
//                .layoutPriority(1)
                
                Spacer()
            
                // Rating
//                HStack (spacing: 2) {
//                    Image(systemName: "star.fill")
//                    Text("4.5")
//                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    AcademyDetailView()
}
