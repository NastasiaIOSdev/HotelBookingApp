//
//  Listings.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 17.01.2024.
//

import Foundation

struct Listings: Identifiable, Codable, Hashable {
    let id: String
    let typeOfRoom: String
    let imageUrls: [String]
    let price: Int
    let numberOfNight: Int
}
