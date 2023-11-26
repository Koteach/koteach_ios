//
//  AcademyReviewView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI
import Combine

struct AcademyReviewView: View {
    @StateObject var viewModel = AcademyReviewViewModel()

    @State var showingBottomSheetView = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    Spacer().frame(width: 20)
                    AcademySearchandFilterBar()
                    Spacer().frame(width: 20)
                }
                
                Spacer().frame(height: 10)
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.black.opacity(0.7))
                    
                    Spacer().frame(width: 20)
                }
                
                ScrollView(showsIndicators: false) {
                    LazyVStack (spacing: 20) {
                        if let data = viewModel.hagwonDatas {
                            ForEach (data, id: \.self) { item in
                                HagwonView(item: item)
                            }
                            .padding()
                        } else {
//                            Text("Server Error")
                        }
                    }
                }
            }
        }
        
    }
}

struct HagwonView: View {
     var item: HagwonModel?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray, lineWidth: 0.5)
                }
            
            HStack() {
                Spacer().frame(width: 12)
                
                VStack(alignment: .leading) {
                    Spacer().frame(height: 12)
                    
                    HStack {
                        Text("\(item?.name ?? "")")
                            .lato(family: .Bold, size: 15)
                            .foregroundColor(.black)
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .frame(width: 12, height: 12)
                        
                        Spacer().frame(width: 12)

                    }
                    .onTapGesture {
                        print("")
                    }
                    
                    HStack(spacing: 0) {
                        
                        Text("\(item?.location ?? "")")
                            .foregroundStyle(.black.opacity(0.5))
                            .lato(family: .Regular, size: 10)
                        
                        Spacer().frame(width: 10)
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.yellow)
                        
                        Spacer().frame(width: 1)
                        
                        Text(String(format: "%.1f", item?.average_rating ?? 0.0))
                            .lato(family: .Light, size: 10)
                    }
                    Spacer().frame(height: 10)
                    
                    HStack {
                        Text("\(item?.description ?? "")")
                            .lato(family: .Regular, size: 12)
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    
                    Spacer().frame(height: 12)
                    
                    HStack {
                        Spacer().frame(width: 10)
                        
                        HStack {
                            Spacer().frame(width: 12)

                            HStack {
                                Image(systemName: "hand.thumbsup")
                                
                                Text("Like")
                                    .lato(family: LatoFamily.Regular, size: 12)
                            }
                            .onTapGesture {
                                print("Like")
                            }
                            
                            Spacer()
                            
                            HStack {
                                if let data = item {
                                    NavigationLink {
                                        AcademyDetailView(hagwonData: data)
                                    } label: {
                                        Image(systemName: "message")
                                            .foregroundColor(.black)
                                        Text("Comment")
                                            .lato(family: LatoFamily.Regular, size: 12)
                                            .foregroundColor(.black)
                                    }
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
                            
                            Spacer().frame(width: 20)
                        }
                    }
                    Spacer().frame(height: 12)
                }
            }
            
        }
    }
    
}
