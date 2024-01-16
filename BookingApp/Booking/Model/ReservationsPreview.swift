//
//  ReservationsPreview.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import Foundation

class ReservationsPreview {
    var reservation: [Reservations] = [
        .init(
            id: NSUUID().uuidString,
            moveFrom: "Санкт-Петербург",
            countryTownName: "Египет, Хургада",
            date: "19.09.2023 – 27.09.2023",
            numberOfNight: "7 ночей",
            hotelName: "Steigenberger Makadi",
            typeOfRoom: "Стандартный с видом на бассейн или сад",
            foodLevel: "Все включено",
            rows: [.moveFrom, .countryTownName, .date, .numberOfNight, .hotelName, .typeOfRoom, .foodLevel])
    ]
}
