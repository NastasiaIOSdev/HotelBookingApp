//
//  Reservations.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import Foundation

struct Reservations: Identifiable, Codable, Hashable {
    let id: String
    let moveFrom: String
    let countryTownName: String
    let date: String
    let numberOfNight: String
    let hotelName: String
    let typeOfRoom: String
    let foodLevel: String
    var rows: [ReservationListRows]
}

enum ReservationListRows: Int, Identifiable, Codable, Hashable {
    case moveFrom
    case countryTownName
    case date
    case numberOfNight
    case hotelName
    case typeOfRoom
    case foodLevel
    
    var title: String {
        switch self {
            
        case .moveFrom:
            return "Вылет из"
        case .countryTownName:
            return "Страна, город"
        case .date:
            return "Даты"
        case .numberOfNight:
            return "Кол-во ночей"
        case .hotelName:
            return "Отель"
        case .typeOfRoom:
            return "Номер"
        case .foodLevel:
            return "Питание"
        }
    }
    var id: Int { return self.rawValue }
}
