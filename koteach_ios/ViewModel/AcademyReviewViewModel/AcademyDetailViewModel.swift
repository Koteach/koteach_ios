//
//  AcademyDetailViewModel.swift
//  koteach_ios
//
//  Created by John Hur on 11/26/23.
//

import Foundation
import Combine

class AcademyDetailViewModel: ObservableObject {
    
    private var cancellable = Set<AnyCancellable>()

    @Published var reviewDatas: [ReviewModel]?
    
    func getReviews(_ id: Int) {
        KoteachAPI.getReviews(id)
            .compactMap { $0 }
            .sink(receiveCompletion: { result in
                print("\(result)")
            }, receiveValue: { [weak self] model in
                print("\(model)")
                
                self?.reviewDatas = model
            })
            .store(in: &cancellable)
    }
    
}
