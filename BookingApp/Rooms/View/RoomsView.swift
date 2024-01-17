//
//  RoomsView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct RoomsView: View {
    @State var viewModel = RoomsViewModel(service: RoomsService())
    
    var body: some View {
        VStack{
            NavigationStack {
                ZStack {
                    Color(.systemGray6)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false) {
                        VStack{
                            LazyVStack {
                                ForEach(viewModel.listings) { listing in
                                  RoomListingItemView(listing: listing, titleButton: "Выбрать номер")
                                }
                                .padding()
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            }
                        }
                    }
                    .navigationTitle("Steigenberger Makadi")
                    .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}

struct RoomsView_Previews: PreviewProvider {
    static var previews: some View {
        RoomsView()
    }
}
