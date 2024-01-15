//
//  ButtonView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import SwiftUI

struct ButtonView: View {
    let titleButton: String
    var body: some View {
            VStack {
                Button {
                    print("Go to..")
                } label: {
                    Text("\(titleButton)")
                        .font(Fonts.SFProDisplay16)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }

            }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(titleButton: "К выбору номера")
    }
}
