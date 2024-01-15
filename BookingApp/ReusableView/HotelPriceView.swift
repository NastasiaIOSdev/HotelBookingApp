//
//  HotelPriceView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct HotelPriceView: View {
    let price: Int
    let description: String
    
    var body: some View {
        VStack{
            HStack(spacing: 8) {
                HStack(spacing: 4) {
                    Text("ОТ")
                    Text("\(price)")
                    Text("₽")
                }.font(Fonts.SFProDisplay30)
                    .minimumScaleFactor(0.1)
                    .lineLimit(1)
                Text("\(description)")
                    .font(Fonts.SFProDisplay16)
                    .foregroundColor(.gray)
                    .baselineOffset(-10)
            }
        }
    }
}

struct HotelPriceView_Previews: PreviewProvider {
    static var previews: some View {
        HotelPriceView(price: 134673, description: "за тур с перелётом")
    }
}
