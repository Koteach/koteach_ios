//
//  AcademyDetailView.swift
//  koteach_ios
//
//  Created by Maggie Li on 11/25/23.
//

import SwiftUI

struct AcademyDetailView: View {
    @StateObject var viewModel = AcademyDetailViewModel()
    
    var hagwonData: HagwonModel
//    var hagwonId: Int
    
    
    var body: some View {
        ZStack {
            
            ScrollView {
                VStack {
                    HStack {
                        Spacer().frame(width: 20)

                        HagwonView(item: hagwonData)

                        Spacer().frame(width: 20)
                    }
                    
                    Spacer().frame(height: 20)
                    
                    Button {
                        print("Write review")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .foregroundColor(Color(hex: "648BF2"))
                                .frame(height: 40)
                                .padding([.leading, .trailing], 20)
                            
                            Text("Write Review")
                                .lato(family: .Bold, size: 17)
                                .foregroundColor(.white)
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    LazyVStack(alignment: .leading) {
                        if let data = viewModel.reviewDatas {
                            ForEach(data, id: \.self) { item in
                                VStack {
                                    HStack {
                                        Spacer().frame(width: 20)
                                        
                                        VStack {
                                            Image(systemName: "person.circle")
                                                .resizable()
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.black.opacity(0.4))
                                            Spacer()
                                        }
                                        
                                        Spacer().frame(width: 15)
                                        
                                        VStack {
                                            HStack {
                                                Text("\(item.title ?? "")")
                                                    .lato(family: .Bold, size: 14)
                                                    .foregroundColor(.black.opacity(0.8))
                                                
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .frame(width: 12, height: 12)
                                                    .foregroundColor(.yellow)
                                                
                                                Text(String(format: "%.1f", item.raring ?? 0.0))
                                                    .lato(family: .Light, size: 10)
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer().frame(height: 7)
                                            
                                            HStack {
                                                Text("\(item.content ?? "")")
                                                    .lato(family: .Regular, size: 12)
                                                    .foregroundColor(.black.opacity(0.8))

                                                Spacer()
                                            }
                                        }

                                        
                                        Spacer()

                                    }
                                    
                                    Spacer().frame(height: 20)
                                }


                            }
                        }
                        
                    }
                    
                    
                    Spacer()
                }

            }
        }
        .onAppear {
//            hagwonData.id
            viewModel.getReviews()
        }
    }
}

//#Preview {
//    AcademyDetailView()
//}
//
