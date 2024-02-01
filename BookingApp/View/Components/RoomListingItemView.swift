//
//  RoomListingItemView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct RoomListingItemView: View {
    let listing: Listings
    let titleButton: String
    @State private var reservationIsOn = false
    
    var body: some View {
        VStack(alignment: .leading){
            
// MARK: - карусель картинок номера
            CarouselView().frame(height: 257)
            
// MARK: - тип номера
            Text("\(listing.typeOfRoom)")
                .font(Fonts.SFProDisplay22)
            
// MARK: - информация о доп опциях
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 30) {
                    Text("Все включено")
                    Text("Кондиционер")
                }
                .font(Fonts.SFProDisplay16)
            }
            .foregroundStyle(.gray)
            
// MARK: - кнопка перехода на подробности об отеле
            NavigationLink(destination: {
                EmptyView()
            }, label: {
                VStack{
                    HStack{
                        Text("Подробное о номере")
                            .font(Fonts.SFProDisplay16)
                        Image(systemName: "chevron.right")
                    }
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .background(Color.lightBlue)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            })
            
// MARK: - строка ц ценой
            HotelPriceView(price: listing.price, description: "за \(listing.numberOfNight) ночей с перелетом")
            
// MARK: - навигация, кнопка
            NavigationLink(isActive: $reservationIsOn) {
                BookingView()
            } label: {
                Button {
                    reservationIsOn.toggle()
                } label: {
                    Text("\(titleButton)")
                        .font(Fonts.SFProDisplay16)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .navigationTitle("")
            }
        }
    }
}

struct RoomListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        RoomListingItemView(listing: ListingsPreview.shared.listingsRooms[0], titleButton: "Выбрать номер")
    }
}
