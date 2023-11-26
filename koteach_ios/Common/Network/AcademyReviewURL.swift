//
//  AcademyReviewURL.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import Foundation
import Combine

extension KoteachAPI {
    static let getHagwonsUrl = "/hagwons"
    
}

extension KoteachAPI {
    static func getHagwons(_ page: Int) -> AnyPublisher<[HagwonModel], Error> {
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        urlComponents?.path = getHagwonsUrl
        urlComponents?.queryItems = [
            URLQueryItem(name: "limit", value: "100"),
            URLQueryItem(name: "page", value: "\(page)")
        ]

        if let percentEncodedQuery = urlComponents?.percentEncodedQuery, !percentEncodedQuery.isEmpty {
            urlComponents?.percentEncodedQuery?.append("&")
        }

        guard let url = urlComponents?.url else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }

        return get(url)
    }
    
}

