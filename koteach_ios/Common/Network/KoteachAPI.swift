//
//  KoteachAPI.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import Foundation
import Alamofire
import Combine

enum KoteachAPI {

    static var baseURL = URL(string: "http://18.133.26.124")!

    static let localURL = URL(string: "http://18.133.26.124")!
    
    static func headers() -> HTTPHeaders {
        return [
//            "Authorization": "", // Token
//            "Content-Language": "ko",
            "Accept": "application/json",
//            "Content-Type": "application/x-www-form-urlencoded"
        ]
    }
    
}

extension KoteachAPI {
    static private func makeRequest<T: Decodable>(_ url: URL, method: HTTPMethod, parameters: Parameters?, encoding: ParameterEncoding, headers: HTTPHeaders?) -> AnyPublisher<T, Error> {
        return Future<T, Error> { promise in
            let request = AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let value):
                        promise(.success(value))
                    case .failure(let error):
                        promise(.failure(error))
                    }
                }
        }
        .handleEvents(receiveCancel: {
            // 취소 시 처리 로직 추가
            print("Request canceled")
        })
        .eraseToAnyPublisher()
    }

    
    static func get<T: Decodable>(_ url: URL) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: KoteachAPI.headers())
    }
    
    static func get<T: Decodable, P: Encodable>(_ url: URL, parameters: P) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.queryString, headers: KoteachAPI.headers())
    }
    
    static func post<T: Decodable>(_ url: URL) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .post, parameters: nil, encoding: URLEncoding.default, headers: KoteachAPI.headers())
    }
    
    static func post<T: Decodable, P: Encodable>(_ url: URL, jsonParameters: P) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .post, parameters: jsonParameters as? Parameters, encoding: JSONEncoding.prettyPrinted, headers: KoteachAPI.headers())
    }
    
    static func post<T: Decodable>(_ url: URL, parameters: [String: String]) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody, headers: KoteachAPI.headers())
    }
    
    static func post<T: Decodable>(_ url: URL, parameters: [String: Any]) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .post, parameters: parameters, encoding: URLEncoding.queryString, headers: KoteachAPI.headers())
    }
    
    static func post<T: Decodable, P: Encodable>(_ url: URL, parameters: P) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .post, parameters: parameters as? Parameters, encoding: URLEncoding.httpBody, headers: nil)
    }
    
    static func put<T: Decodable>(_ url: URL, parameters: [String: Any]) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .put, parameters: parameters, encoding: URLEncoding.queryString, headers: KoteachAPI.headers())
    }
    
    static func delete<T: Decodable>(_ url: URL) -> AnyPublisher<T, Error> {
        return makeRequest(url, method: .delete, parameters: nil, encoding: URLEncoding.default, headers: KoteachAPI.headers())
    }
    
}

enum CustomErrorType: Error {
    case networkError
    case authenticationError
    
    var text: String {
        switch self {
        case .networkError: return "네트워크를 확인해주세요."
        case .authenticationError: return "아이디와 비밀번호를 확인해 주세요."
        }
    }
}
