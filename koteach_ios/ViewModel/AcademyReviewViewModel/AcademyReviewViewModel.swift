//
//  AcademyReviewViewModel.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import Foundation
import Combine

class AcademyReviewViewModel: ObservableObject {
    
    private var cancellable = Set<AnyCancellable>()

    @Published var hagwonDatas: [HagwonModel]?
    
    init() {
        getHagwons()
    }
    
    func getHagwons() {
        KoteachAPI.getHagwons(1)
            .compactMap { $0 }
            .sink(receiveCompletion: { result in
                print("\(result)")
            }, receiveValue: { [weak self] model in
                print("\(model)")
                
                self?.hagwonDatas = model
            })
            .store(in: &cancellable)

    }

    
    
    
}
