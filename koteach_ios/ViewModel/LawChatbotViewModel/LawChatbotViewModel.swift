//
//  LawChatbotViewModel.swift
//  koteach_ios
//
//  Created by John Hur on 11/26/23.
//

import Foundation
import Combine

class LawChatbotViewModel: ObservableObject {
    
    private var cancellable = Set<AnyCancellable>()

    @Published var answer: AnswerModel = AnswerModel(answer: "'", time: "")
    
    
    func getChatbotAnswer(_ text: String) {
        KoteachAPI.getAnswer(text)
            .compactMap { $0 }
            .sink(receiveCompletion: { result in
                print("\(result)")
            }, receiveValue: { [weak self] model in
                
                self?.answer = model
            })
            .store(in: &cancellable)

    }


    
}
