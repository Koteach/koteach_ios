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
        var isAnswered = viewModel.answer.answer != ""
        
        ZStack {
            VStack {
                Spacer()

                ScrollView(.vertical, showsIndicators: false) {
                    Spacer().frame(height: 20)
                    
                    HStack {
                        Spacer().frame(width: 20)
                        
                        ZStack {
                            
                            Text("\(viewModel.answer.answer ?? "")")
                                .lato(family: .Regular, size: 16)
                                .foregroundColor(.white)
                                .padding([.leading, .top, .trailing, .bottom], 10)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(.green)
                                )
                        }
                        .opacity(isAnswered ? 1.0 : 0.0)
                        .animation(.easeInOut)

                        
                        
                        Spacer().frame(width: 20)
                        
                    }
                    
                    VStack {
                        Spacer()
                        Text("Still waiting your Question :)")
                            .opacity(isAnswered ? 0.0 : 1.0)
                            .animation(.easeInOut)

                        Spacer()
                    }
                    
                    Spacer().frame(height: 70)
                }
                Spacer()
            }
            
            
            VStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    
                    HStack {
                        Spacer().frame(width: 20)
                        
                        TextField(text: $input) {
                            Text("Enter your question here...")
                        }
                        
                        Spacer().frame(width: 10)
                        
                        
                        Button {
                            viewModel.getChatbotAnswer(input)
                        } label: {
                            Image(systemName: "paperplane")
                        }
                        
                        
                        Spacer().frame(width: 20)
                        
                    }
                    
                    HStack {
                        Spacer()
                        
                        
                        Spacer().frame(width: 20)
                        
                    }
                }
                .frame(height: 50)
            }
            
            if viewModel.isLoading {
                ProgressView()
            }
            

        }
    }
    
}
