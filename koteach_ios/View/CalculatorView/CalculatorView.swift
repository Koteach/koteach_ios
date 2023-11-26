//
//  CalculatorView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var tap: Int = 0 // 0 == Severence, 1 == Tax Status
    
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                
                Text("TBD")
                
                Spacer()
                
//                HStack {
//        //            TabView {
//        //                Button(action: {}, label: {
//        //                    Text("Severance")
//        //                    Text("Tax Staus")
//        //                })
//        //
//        //            }
//                    Button(action: { tap = 0 }, label: {
//                        Text("Severance")
//                    })
//                    
//                    Button(action: { tap = 1 }, label: {
//                        Text("Tax Staus")
//                    })
//
//                    
//                }
//                
//                Spacer().frame(height: 20)
//                HStack(spacing: 20) {
//                    Button {
//                        tap = 0
//                    } label: {
//                        HStack {
//                            
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 5)
//                                    .foregroundColor(tap == 0 ? Color(hex: "0x648BF2"): Color(hex: "EDEDED"))
//                                
//                                Text("Severence")
//                                    .lato(family: .Bold, size: 16)
//                                    .foregroundColor(tap == 0 ? .white : .black.opacity(0.2))
//
//                            }
//                            .frame(width: 105, height: 40)
//
//                            
//                        }
//                    }
//                    
//                    Button {
//                        tap = 1
//                    } label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 5)
//                                .foregroundColor(tap == 1 ? Color(hex: "0x648BF2"): Color(hex: "EDEDED"))
//                            
//                            Text("Tax Status")
//                                .lato(family: .Bold, size: 16)
//                                .foregroundColor(tap == 1 ? .white : .black.opacity(0.2))
//
//                        }
//                        .frame(width: 105, height: 40)
//                    }
//
//                }
//                
//                if tap == 0 {
//                    Rectangle()
//                        .foregroundColor(.red)
//                } else {
//                    Rectangle()
//                        .foregroundColor(.green)
//                }
//                
//                Spacer().frame(height: 30)
//                
//                Rectangle().frame(height: 0.5).foregroundColor(.black.opacity(0.2))
//                
//                Spacer()
                
            }
            
        }
    }
}

