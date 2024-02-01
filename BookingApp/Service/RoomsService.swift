//
//  RoomsService.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 17.01.2024.
//

import Foundation

class RoomsService {
    func fetureListings() async throws -> [Listings] {
        return ListingsPreview.shared.listingsRooms
    }
}
