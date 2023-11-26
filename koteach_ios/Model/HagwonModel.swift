//
//  HagwonModel.swift
//  koteach_ios
//
//  Created by John Hur on 11/25/23.
//

import Foundation

struct HagwonModel: Codable, Hashable {
    let id: Int?
    let name: String?
    let description: String?
    let location: String?
    let average_rating: Float?
    let create_at: String?
    let modified_at: String?
}
