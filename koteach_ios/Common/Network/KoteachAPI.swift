//
//  KoteachAPI.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import Foundation
import Alamofire
import Combine

enum TodoAPI {
    static let baseURL = URL(string: "http://127.0.0.1:8000")!
    
    static let localURL = URL(string: "http://127.0.0.1:8000")!
    
    static func headers() -> HTTPHeaders {
        return [
            "Authorization": "", // Token
            "Content-Language": "ko",
            "Accept": "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
        ]
    }
    
}

//extension TodoAPI {
//    static private func makeRequest<T: Decodable>(_ url: URL, method: HTTPMethod, parameters: Parameters?, encoding: ParameterEncoding, headers: HTTPHeaders?) -> Observable<T> {
//        return Observable.create { observer in
//            let request = AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers)
//                .validate()
//                .responseDecodable(of: T.self) { response in
//                    switch response.result {
//                    case .success(let value):
//                        observer.onNext(value)
//                        observer.onCompleted()
//                    case .failure(let error):
//                        observer.onError(error)
//                    }
//                }
//            return Disposables.create {
//                request.cancel()
//            }
//        }
//    }
//    
//    
//    static func get<T: Decodable>(_ url: URL) -> Observable<T> {
//        return makeRequest(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: TodoAPI.headers())
//    }
//    
//    static func get<T: Decodable, P: Encodable>(_ url: URL, parameters: P) -> Observable<T> {
//        return makeRequest(url, method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.queryString, headers: TodoAPI.headers())
//    }
//    
//    static func post<T: Decodable>(_ url: URL) -> Observable<T> {
//        return makeRequest(url, method: .post, parameters: nil, encoding: URLEncoding.default, headers: TodoAPI.headers())
//    }
//    
//    static func post<T: Decodable, P: Encodable>(_ url: URL, jsonParameters: P) -> Observable<T> {
//        return makeRequest(url, method: .post, parameters: jsonParameters as? Parameters, encoding: JSONEncoding.prettyPrinted, headers: TodoAPI.headers())
//    }
//    
//    static func post<T: Decodable>(_ url: URL, parameters: [String: String]) -> Observable<T> {
//        return makeRequest(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody, headers: TodoAPI.headers())
//    }
//    
//    static func post<T: Decodable>(_ url: URL, parameters: [String: Any]) -> Observable<T> {
//        return makeRequest(url, method: .post, parameters: parameters, encoding: URLEncoding.queryString, headers: TodoAPI.headers())
//    }
//    
//    static func post<T: Decodable, P: Encodable>(_ url: URL, parameters: P) -> Observable<T> {
//        return makeRequest(url, method: .post, parameters: parameters as? Parameters, encoding: URLEncoding.httpBody, headers: nil)
//    }
//    
//    static func put<T: Decodable>(_ url: URL, parameters: [String: Any]) -> Observable<T> {
//        return makeRequest(url, method: .put, parameters: parameters, encoding: URLEncoding.queryString, headers: TodoAPI.headers())
//    }
//    
//    static func delete<T: Decodable>(_ url: URL) -> Observable<T> {
//        return makeRequest(url, method: .delete, parameters: nil, encoding: URLEncoding.default, headers: TodoAPI.headers())
//    }
//    
//}

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
