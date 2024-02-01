//
//  CalculatingTheTotalPriceView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct CalculatingTheTotalPriceView: View {
    var tourPrice: Int = 186600
    var fuelFee: Int = 9300
    var serviceFee: Int = 2136
    
    var body: some View {
        
        var totalPrice: Int = tourPrice + fuelFee + serviceFee
        
        VStack(spacing: 16) {
            HStack{
                Text("Тур")
                    .foregroundStyle(.gray)
                Spacer()
                Text("\(tourPrice) ₽")
            }
            HStack{
                Text("Топливный сбор")
                    .foregroundStyle(.gray)
                Spacer()
                Text("\(fuelFee) ₽")
            }
            HStack{
                Text("Сервисный сбор")
                    .foregroundStyle(.gray)
                Spacer()
                Text("\(serviceFee) ₽")
            }
            HStack{
                Text("К оплате")
                    .foregroundStyle(.gray)
                Spacer()
                Text("\(totalPrice) ₽")
            }
        }
        .font(Fonts.SFProDisplay16)
    }
}

struct CalculatingTheTotalPriceView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatingTheTotalPriceView()
    }
}
