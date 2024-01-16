//
//  PaymentView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct PaymentView: View {
    var number: Int = Int.random(in: 0..<999999)
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    Image("Party Popper")
                        .frame(width: 44,height: 44)
                        .padding(25)
                        .background(Color.lightGray2, in:RoundedRectangle(cornerRadius: 100))
                }
                .padding(.bottom, 12)
                Spacer().frame(height: 32)
                Text("Ваш заказ принят в работу")
                    .font(Fonts.SFProDisplay22)
                Spacer().frame(height: 32)
                Text("Подтверждение заказа № \(number) может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                    .font(Fonts.SFProDisplay16)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                Spacer().frame(height: 160)
                Button(action: {
                    //go back to MainHotelView
                }, label: {
                    Text("Супер!")
                        .foregroundColor(Color.white)
                })
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(15)

            }
        }
        .padding()
        .navigationTitle("Заказ оплачен")
    }
}

struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
