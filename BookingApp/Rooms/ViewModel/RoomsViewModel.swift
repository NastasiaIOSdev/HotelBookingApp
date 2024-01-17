//
//  RoomsViewModel.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 17.01.2024.
//

import Foundation

class RoomsViewModel: ObservableObject {
    @Published var listings = [Listings]()
    private let service: RoomsService
    
    init(service: RoomsService) {
        self.service = service
        Task {
            await fetureListings()
        }
        
        func fetureListings() async {
            do {
                self.listings = try await service.fetureListings()
            } catch {
                print("Debug: feiled to listings with errors \(error.localizedDescription)")
            }
        }
    }
}
