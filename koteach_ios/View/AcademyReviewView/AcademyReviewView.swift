//
//  AcademyReviewView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI
import Combine

struct AcademyReviewView: View {
    @ObservedObject var viewModel = AcademyReviewViewModel()

    @State var showingBottomSheetView = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
            HStack {
                Spacer().frame(width: 20)
                AcademySearchandFilterBar()
                Spacer().frame(width: 20)
            }
            
            ScrollView {
                LazyVStack (spacing: 20) {
                    if let data = viewModel.reviewDatas {
                        ForEach (data, id: \.self) { item in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 30)
                                        .foregroundColor(.white)
                                        .overlay {
                                            RoundedRectangle(cornerRadius: 10)
                                            .stroke(.gray, lineWidth: 0.5)
                                        }
                                    
                                    //Academy details
                                    
                                    HStack() {
                                        // Details
                                        Spacer().frame(width: 12)
                                        
                                        
                                        VStack(alignment: .leading) {
                                            Spacer().frame(height: 12)

                                        HStack {
                                            Text("\(item.name ?? "")")
                                                .lato(family: .Bold, size: 15)
                                                .foregroundColor(.black)
                                            Spacer().frame(width: 175)
                                            
                                            Image(systemName: "ellipsis")
                                                .frame(width: 12, height: 12)
                                        }
                                        .onTapGesture {
                                            print("")
                                        }
                                            
                                            HStack(spacing: 0) {
                                                
                                                Text("\(item.location ?? "")")
                                                    .foregroundStyle(.gray)
                                                    .lato(family: .Light, size: 10)
                                                
                                                Spacer().frame(width: 10)
                                                
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .frame(width: 12, height: 12)
                                                .foregroundColor(.yellow)
                                                
                                                Spacer().frame(width: 1)
                                                
                                                Text(String(format: "%.1f", item.average_rating ?? 0.0))
                                                    .lato(family: .Light, size: 10)
                                            }
                                            Spacer().frame(height: 10)
                                            
                                            HStack {
                                                Text("\(item.description ?? "")")
                                                    .lato(family: .Regular, size: 12)
                                                    .foregroundColor(.black)
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer().frame(height: 12)
                                            
                                            HStack {
                                                Spacer().frame(width: 10)
                                                
                                                HStack {
                                            HStack {
                                                Image(systemName: "hand.thumbsup")
                                                    .resizable()
                                                    .frame(width: 12, height: 12)
                                                
                                                Text("Like")
                                                    .lato(family: LatoFamily.Regular, size: 12)
                                            }
                                            .onTapGesture {
                                                print("Like")
                                            }
                                            
                                            Spacer()
                                            
                                            HStack {
                                                NavigationLink {
                                                    AcademyDetailView(showingBottomSheetView: $showingBottomSheetView)
                                                } label: {
                                                    Image(systemName: "message")
                                                    Text("Comment")
                                                        .lato(family: LatoFamily.Regular, size: 12)
                                                }
                                                
                                            }
                                                    
                                            Spacer()
                                            
                                            HStack {
                                                Image(systemName: "bookmark")
                                                Text("Save")
                                                    .lato(family: LatoFamily.Regular, size: 12)
                                            }
                                            .onTapGesture {
                                                print("Save")
                                            }
                                            Spacer().frame(height: 10)
                                            
                                        Spacer()
                                    }
                                }
                                .padding()
                                
                            }
                        }

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
