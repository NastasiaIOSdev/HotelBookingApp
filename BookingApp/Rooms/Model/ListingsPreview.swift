//
//  ListingsPreview.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 17.01.2024.
//

import Foundation

class ListingsPreview {
    static let shared = ListingsPreview()
    
    var listingsRooms: [Listings] = [
        .init(
            id: NSUUID().uuidString,
            typeOfRoom: "Стандартный номер с видом на бассейн или сад",
            imageUrls: ["1", "2", "3", "4"],
            price: 186600,
            numberOfNight: 7),
        .init(
            id: NSUUID().uuidString,
            typeOfRoom: "Супериор на клубном этаже",
            imageUrls: ["4", "3", "1", "2"],
            price: 1306000,
            numberOfNight: 6),
        .init(
            id: NSUUID().uuidString,
            typeOfRoom: "Люкс с видом на море",
            imageUrls: ["2", "3", "4", "1"],
            price: 350000,
            numberOfNight: 5)
    ]
}
