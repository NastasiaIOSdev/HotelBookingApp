//
//  BookingView.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 16.01.2024.
//

import SwiftUI

enum AddTouristOptions {
    case watchImfoAboutTourist
    case addNewTourist
}

struct BookingView: View {
    let peice: Int = 198036
    let titleButton: String
    @State private var payIsOn = false
    @State private var selectedOption: AddTouristOptions = .addNewTourist
    
    var body: some View {
        VStack{
            NavigationStack {
                ZStack {
                    Color(.systemGray6)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView(showsIndicators: false) {
                        
                        // MARK: - Блок с отелем
                        LazyVStack() {
                            RaitingNameHotelView()
                        }
                            .padding(.vertical, 16)
                            .padding(.horizontal, 16)
                            .background(.white)
                            .cornerRadius(12)
                        
                        // MARK: - Блок с данными брони
                        LazyVStack() {
                            BookingInfoRowView(nameRow: "Вылет из", infoInRow: "Санкт-Петербург")
                            BookingInfoRowView(nameRow: "Страна, город", infoInRow: "Египет, Хургада")
                            BookingInfoRowView(nameRow: "Даты", infoInRow: "19.09.2023 – 27.09.2023")
                            BookingInfoRowView(nameRow: "Кол-во ночей", infoInRow: "7 ночей")
                            BookingInfoRowView(nameRow: "Отель", infoInRow: "Steigenberger Makadi")
                            BookingInfoRowView(nameRow: "Номер", infoInRow: "Стандартный с видом на бассейн или сад")
                            BookingInfoRowView(nameRow: "Питание", infoInRow: "Все включено")
                        }
                        .padding(.top, 16)
                        .padding(.horizontal, 16)
                        .background(.white)
                        .cornerRadius(12)
                        
                        // MARK: - Блок и информацией о покупателе
                        LazyVStack() {
                            InfoAboutBayerView()
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.white)
                        .cornerRadius(12)
                        
                        // MARK: - Блок с информацией о туристах
                        LazyVStack() {
                            VStack {
                                if selectedOption == .watchImfoAboutTourist {
                                    CollapsedAddTouristButtonView(title: "Первый турист", imageButton: "chevron.right")
                                    InfoAboutTouristView()
                                } else {
                                    CollapsedAddTouristButtonView(title: "Первый турист", imageButton: "chevron.down")
                                }
                                
                            }.onTapGesture {
                                withAnimation(.spring()) {
                                    selectedOption = .watchImfoAboutTourist
                                }
                            }
                            
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.white)
                        .cornerRadius(12)
                        
                        // MARK: - Блок добавить туриста
                        LazyVStack() {
                            VStack {
                                if selectedOption == .addNewTourist {
                                    CollapsedAddTouristButtonView(title: "Добввить туриста", imageButton: "plus")
                                } else {
                                    CollapsedAddTouristButtonView(title: "Добввить туриста", imageButton: "plus")
                                }
                                
                            }.onTapGesture {
                                withAnimation(.spring()) {
                                    selectedOption = .addNewTourist
                                }
                            }
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.white)
                        .cornerRadius(12)
                        
                        // MARK: - Блок с итоговой ценой
                        LazyVStack() {
                            CalculatingTheTotalPriceView()
                        }
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.white)
                        .cornerRadius(12)
                        
                        // MARK: - Блок Кнопка
                        LazyVStack() {
                            NavigationLink(isActive: $payIsOn) {
                                PaymentView()
                            } label: {
                                Button {
                                    payIsOn.toggle()
                                } label: {
                                    Text("Оплатить 134000 ₽")
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
                            .padding(.vertical, 16)
                            .padding(.horizontal, 16)
                            .background(.white)
                            .cornerRadius(12)
                        }
                    }
                    .navigationTitle("Бронирование")
                    .navigationBarTitleDisplayMode(.inline)
                }
          }
       }
    }

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView(titleButton: "chevron.down")
    }
}
