//
//  InfoAboutTouristView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

struct InfoAboutTouristView: View {
    @State var textFieldArray: [String] = ["", "", "", "", "", ""]
    @State var textFieldName: [String] = ["Имя", "Фамилия", "Дата рождения", "Гражданство", "Номер загранпаспорта", "Срок действия загранпаспорта"]
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(textFieldName, id: \.self) { index in
                        TextField("\(textFieldName[0])", text: $textFieldArray[0])
                            .padding()
                            .background(Color.lightGray2)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct InfoAboutTouristView_Previews: PreviewProvider {
    static var previews: some View {
        InfoAboutTouristView()
    }
}
