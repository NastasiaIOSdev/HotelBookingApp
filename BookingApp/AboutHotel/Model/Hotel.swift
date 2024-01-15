//
//  Hotel.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import Foundation


// MARK: - Hotel

struct Hotel: Codable, Identifiable {
    let id: Int
    let name, adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageUrls: [String]
    let aboutTheHotel: AboutTheHotel

    enum CodingKeys: String, CodingKey {
        case id, name, adress
        case minimalPrice = "minimal_price"
        case priceForIt = "price_for_it"
        case rating
        case ratingName = "rating_name"
        case imageUrls = "image_urls"
        case aboutTheHotel = "about_the_hotel"
    }
    
    // MARK: - AboutTheHotel
    struct AboutTheHotel: Codable {
        let description: String
        let peculiarities: [String]
    }
    
    // MARK: - MOCK data
    static let mockHotelData = Hotel(
        id: 1,
        name: "Steigenberger Makadi",
        adress: "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
        minimalPrice: 134673,
        priceForIt: "за тур с перелётом",
        rating: 5,
        ratingName: "Превосходно",
        imageUrls: ["1", "4", "5", "8"],
        aboutTheHotel: AboutTheHotel(description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!", peculiarities: ["Бесплатный Wifi на всей территории отеля", "1 км до пляжа", "Бесплатный фитнес-клуб", "20 км до аэропорта"])
        )
}




