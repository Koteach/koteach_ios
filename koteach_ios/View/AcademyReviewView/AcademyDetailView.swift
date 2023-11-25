//
//  AcademyDetailView.swift
//  koteach_ios
//
//  Created by Maggie Li on 11/25/23.
//

import SwiftUI

struct AcademyDetailView: View {
    @Binding var showingBottomSheetView: Bool

    
    
    var body: some View {
        ZStack {
//            VStack {
//                Spacer().frame(height: 20)
//                
////                HStack {
////                    Spacer()
////                    
////                    Image(systemName: "xmark")
////                        .resizable()
////                        .frame(width: 20, height: 20)
////                        .onTapGesture {
////                            showingBottomSheetView = false
////                        }
////                    Spacer().frame(width: 20)
////                }
////                Spacer()
//            }
//            
            
            
            ScrollView {
                LazyVStack (spacing: 5) {
                    ForEach (0 ... 20, id: \.self) { listing in
                        ZStack {
                            
//                            Spacer().frame(width: 10)
                            
                            VStack {
                                
                                Text("I strongly advise avoiding this school like the plague. It has a high turnover rate due to management and the toxic working environment. In the 6 months I worked there 9 teachers have left, one of which was a midnight run, and more are planning to leave. It's usually understaffed because they can't retain anyone, with the additional work being placed on the remaining teachers.")
                            Spacer().frame(width: 10)
                                
                                HStack{
                                    Spacer().frame(width: 20)
                                    Rectangle()
                                        .frame(height: 0.5)
                                        .foregroundColor(.gray)
                                    Spacer().frame(width: 20)
                                }
                            
                            }

                        }
                        

                    }
                }
            }
        }
    }
}

//#Preview {
//    AcademyDetailView()
//}
//
