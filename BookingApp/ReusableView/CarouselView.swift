//
//  CarouselView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct CarouselView: View {
    var body: some View {
            TabView{
                ForEach(Hotel.mockHotelData.imageUrls, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page).clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
