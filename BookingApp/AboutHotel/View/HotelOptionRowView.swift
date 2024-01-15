//
//  HotelOptionRowView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct HotelOptionRowView: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
      //  NavigationView() {
//            VStack(spacing: 10) {
                HStack() {
                    Image(imageName)
                    VStack(spacing: 10) {
                        HStack(spacing: 10) {
                            VStack(alignment: .leading) {
                                Text(title)
                                    .font(Fonts.SFProDisplay16)
                                Text(description).font(Fonts.SFProDisplay14)
                            }
                            Spacer()
                            NavigationLink(destination: {
                                EmptyView()
                            }, label: {
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.black)
                            })
                            .navigationTitle("")
                        }
                    }
//                }
         //   }
        }
                .padding(.trailing, 15)
                .padding(.leading, 15)
                .padding(.top, 10)
                .padding(.bottom, 10)
    }
}

struct HotelOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        HotelOptionRowView(
            imageName: "emoji-happy",
            title: "Title",
            description: "Description")
    }
}
