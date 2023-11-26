//
//  LawChatbotView.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import SwiftUI

struct LawChatbotView: View {
    @StateObject var viewModel = LawChatbotViewModel()
    
    @State var input: String = ""
    
    var body: some View {
        ZStack {
            LazyVStack {
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Spacer().frame(width: 20)
                        
                        Text("\(viewModel.answer.answer ?? "")")

                        Spacer().frame(width: 20)

                    }
                }
                
            }
            
            
            
            VStack {
                Spacer()
                
                ZStack {
                    HStack {
                        Spacer().frame(width: 20)
                        
                        TextField(text: $input) {
                            Text("Enter your question here...")
                        }
                        
                        Spacer().frame(width: 10)

                        
                        Button {
                            viewModel.getChatbotAnswer(input)
                        } label: {
//                            Text("Send")
                            Image(systemName: "paperplane")
//                                .foregroundColor(<#T##color: Color?##Color?#>)
                        }

                        
                        Spacer().frame(width: 20)

                    }
                    
                    HStack {
                        Spacer()
                        
                        
                        Spacer().frame(width: 20)

                    }
                }
                
                Spacer().frame(height: 10)
            }
//            ProgressView()
            

        }
    }
    
}
