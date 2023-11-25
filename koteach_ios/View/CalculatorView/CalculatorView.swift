//
//  CalculatorView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var tap = 0 // 0 == Severence, 1 == Tax status
        
    
    
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
        //            TabView {
        //                Button(action: {}, label: {
        //                    Text("Severance")
        //                    Text("Tax Staus")
        //                })
        //
        //            }
                    Button(action: { tap = 0 }, label: {
                        Text("Severance")
                    })
                    
                    Button(action: { tap = 1 }, label: {
                        Text("Tax Staus")
                    })

                    
                }
                
                Spacer().frame(height: 20)
                
                if tap == 0 {
                    Rectangle()
                        .foregroundColor(.red)
                } else {
                    Rectangle()
                        .foregroundColor(.green)
                }
                
                Spacer()
                
            }
        }
    }
}
