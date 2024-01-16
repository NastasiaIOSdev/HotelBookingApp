//
//  CollapsedAddTouristButtonView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct CollapsedAddTouristButtonView: View {
    let title: String
    let imageButton: String
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("\(title)").font(Fonts.SFProDisplay22)
                    Spacer()
                    Image(systemName: "\(imageButton)")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 14)
                        .background(Color.lightBlue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
            }
        }
    }
}

struct CollapsedAddTouristButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CollapsedAddTouristButtonView(title: "Первый турист", imageButton: "chevron.down")
    }
}
