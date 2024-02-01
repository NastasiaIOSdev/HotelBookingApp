//
//  InfoAboutBayerView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct InfoAboutBayerView: View {
    @State var telNumberTextField: String = ""
    @State var mailTextField: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 20) {
                Text("Информация о покупателе")
                    .font(Fonts.SFProDisplay22)
                VStack(alignment: .leading, spacing: 8) {
                    TextField("Номер телефона", text: $telNumberTextField)
                        .padding()
                        .background(Color.lightGray2)
                    TextField("Почта", text: $mailTextField)
                        .padding()
                        .background(Color.lightGray2)
                }
            }
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(Fonts.SFProDisplay14)
                .foregroundStyle(.gray)
            
        }
    }
}

struct InfoAboutBayerView_Previews: PreviewProvider {
    static var previews: some View {
        InfoAboutBayerView()
    }
}
