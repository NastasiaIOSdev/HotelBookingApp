//
//  RaitingNameHotelView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct RaitingNameHotelView: View {
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 3) {
                            Image(systemName: "star.fill")
                            Text("5").font(Fonts.SFProDisplay16)
                            Text(Hotel.mockHotelData.ratingName).font(Fonts.SFProDisplay16)
                
                        }
            .foregroundColor(Color.darkOrange)
            .padding(.horizontal,10)
            .padding(.vertical, 5)
            .background(Color.lightOrange)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
            Text(Hotel.mockHotelData.name).font(Fonts.SFProDisplay22)
            
            NavigationLink(destination: {
                EmptyView()
            }, label: {
                Text(Hotel.mockHotelData.adress).font(Fonts.SFProDisplay14)
            }).navigationTitle("")
        }
        
    }              
}

struct RaitingNameHotelView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingNameHotelView()
    }
}
