//
//  MainHotelView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct MainHotelView: View {
    var body: some View {
        
        VStack {
            NavigationStack{
                ZStack{
                    Color(.systemGray6)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false) {
                        
                        // MARK: - 1 LazyVStack
                        
                        LazyVStack(alignment: .leading, spacing: 8) {
                            
                            CarouselView().frame(height: 257).padding(.bottom, 8)
                            
                            RaitingNameHotelView()
                            
                            Text(Hotel.mockHotelData.name).font(Fonts.SFProDisplay22)
                            
                            NavigationLink(destination: {
                                EmptyView()
                            }, label: {
                                Text(Hotel.mockHotelData.adress).font(Fonts.SFProDisplay14)
                            }).navigationTitle("")
                            
                            HotelPriceView(price: Hotel.mockHotelData.minimalPrice, description: Hotel.mockHotelData.priceForIt)
                            
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.white).edgesIgnoringSafeArea(.top)
                        .cornerRadius(12)
                        
                        // MARK: - 2 LazyVStack
                        
                        LazyVStack(alignment: .leading, spacing: 16) {
                            
                            Text("Об отеле").font(Fonts.SFProDisplay22)
                            HStack(spacing: 8) {
                                
                                VStack(alignment: .leading, spacing: 8){
                                    HStack(spacing: 30){
                                        Text(Hotel.mockHotelData.aboutTheHotel.peculiarities[0])
                                        Text(Hotel.mockHotelData.aboutTheHotel.peculiarities[1])
                                    }
                                    HStack(spacing: 30){
                                        Text(Hotel.mockHotelData.aboutTheHotel.peculiarities[2])
                                        Text(Hotel.mockHotelData.aboutTheHotel.peculiarities[3])
                                    }
                                }
                                .foregroundColor(.gray)
                                .font(Fonts.SFProDisplay16)
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5).background(Color.lightGray1)
                                // .minimumScaleFactor(0.1)
                                .lineLimit(1)
                            }
                            
                            Text(Hotel.mockHotelData.aboutTheHotel.description)
                                .font(Fonts.SFProDisplay16).foregroundColor(.black.opacity(0.9))
                            VStack(spacing: 0) {
                                HotelOptionRowView(imageName: "emoji-happy", title: "Удобства", description: "Самое необходимое")
                                Divider()
                                    .padding(.leading, 40)
                                    .padding(.trailing, 16)
                                HotelOptionRowView(imageName: "tick-square", title: "Что включено", description: "Самое необходимое")
                                Divider()
                                    .padding(.leading, 40)
                                    .padding(.trailing, 16)
                                HotelOptionRowView(imageName: "close-square", title: "Что не включено", description: "Самое необходимое")
                            }
                            .background(Color.lightGray1)
                            .cornerRadius(12)
                            
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.white)
                        .cornerRadius(12)
                        
                        // MARK: - 3 LazyVStack
                        
                        LazyVStack(alignment: .leading, spacing: 8) {
                            ButtonView(titleButton: "К выбору номера")
                        }
                        .padding(.top, 12)
                        .padding(.bottom, 28)
                        .padding(.horizontal, 16)
                        .background(.white)
                        Spacer(minLength: 0)
                    }
                }
            }
          //  .padding()
            .navigationTitle("Отель")
            .navigationBarTitleDisplayMode(.inline)
            .background(.green)
            
        }
    }
}

struct MainHotelView_Previews: PreviewProvider {
    static var previews: some View {
        MainHotelView()
    }
}
