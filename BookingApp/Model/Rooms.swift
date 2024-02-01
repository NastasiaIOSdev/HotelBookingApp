//
//  Rooms.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import Foundation


// MARK: - Room
struct Room: Codable,Identifiable {
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]

    enum CodingKeys: String, CodingKey {
        case id, name, price
        case pricePer = "price_per"
        case peculiarities
        case imageUrls = "image_urls"
    }
}
