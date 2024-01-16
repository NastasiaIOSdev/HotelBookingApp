//
//  BookingInfoRowView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct BookingInfoRowView: View {
    let nameRow: String
    let infoInRow: String
    
    var body: some View {
        HStack(alignment: .top){
                Text(nameRow)
                    .foregroundStyle(.gray)
                    .frame(width: 140, alignment: .leading)
                Text(infoInRow)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .font(Fonts.SFProDisplay16)
            .padding(.bottom, 16)
        }
}

struct BookingInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookingInfoRowView(nameRow: "nameRow", infoInRow: "infoInRow")
    }
}
