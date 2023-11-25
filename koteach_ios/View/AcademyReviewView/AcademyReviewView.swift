//
//  AcademyReviewView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI

struct AcademyReviewView: View {
    var body: some View {
        NavigationStack {
            HStack {
                Spacer().frame(width: 20)
                AcademySearchandFilterBar()
                Spacer().frame(width: 20)
            }
            
            ScrollView {
                LazyVStack (spacing: 20) {
                    ForEach (0 ... 10, id: \.self) { listing in
                        ZStack {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(.white)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 0.5)
                                }
                            
                            //Academy details
                            
                            HStack() {
                                // Details
                                Spacer().frame(width: 12)
                                
                                VStack(alignment: .leading) {
                                    Spacer().frame(height: 12)
                                    
                                    Text("Hagwon Name")
                                        .lato(family: .Bold, size: 15)
                                        .foregroundColor(.black)
                                    
                                    HStack(spacing: 0) {
                                        
                                        Text("Location, City")
                                            .foregroundStyle(.gray)
                                            .lato(family: .Light, size: 10)
                                        
                                        Spacer().frame(width: 10)
                                        
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                        
                                        Spacer().frame(width: 1)
                                        
                                        Text("4.5")
                                            .lato(family: .Light, size: 10)
                                    }
                                    Spacer().frame(height: 10)
                                    
                                    HStack {
                                        Text("Hagwon information Hagwon information Hagwon information Hagwon information Hagwon information Hagwon information Hagwon information Hagwon information")
                                        
                                            .lato(family: .Regular, size: 12)
                                            .foregroundColor(.black)
                                        
                                        Spacer()
                                    }
                                    
                                    Spacer().frame(height: 12)
                                    
                                    HStack {
                                        Spacer().frame(width: 10)
                                        
                                        Image(systemName: "hand.thumbsup")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                        
                                        Text("Like")
                                            .lato(family: LatoFamily.Regular, size: 12)
                                        
                                        
//                                        Spacer().frame(width: 61)
                                        Spacer()
                                        
                                        Image(systemName: "message")
                                        Text("Comment")
                                            .lato(family: LatoFamily.Regular, size: 12)
                                        
                                        
//                                        Spacer().frame(width: 61)
                                        Spacer()
                                        
                                        Image(systemName: "bookmark")
                                        Text("Save")
                                            .lato(family: LatoFamily.Regular, size: 12)
                                        
                                        Spacer().frame(width: 10)

                                    }
                                    
                                    Spacer().frame(height: 10)
                                    
                                }
                                Spacer()
                            }
                        }
                        .padding()
                        
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    AcademyReviewView()
}
