//
//  Fonts.swift
//  BookingApp
//
//  Created by Анастасия Ларина on 15.01.2024.
//

import Foundation
import SwiftUI

enum Fonts {
    case sf12
    case sf14
    case sf16
    case sf17
    case sf22
    case sf30
    
    var font: UIFont? {
        switch self {
        case .sf12:
            return UIFont(name: "SFProDisplay-Regular", size: 12)
        case .sf14:
            return UIFont(name: "SFProDisplay-Regular", size: 14)
        case .sf16:
            return UIFont(name: "SFProDisplay-Regular", size: 16)
        case .sf17:
            return UIFont(name: "SFProDisplay-Regular", size: 17)
        case .sf22:
            return UIFont(name: "SFProDisplay-Regular", size: 22)
        case .sf30:
            return UIFont(name: "SFProDisplay-Regular", size: 30)
        }
    }
}

extension Fonts {
    public static let SFProDisplay12: Font = Font(UIFont(name: "SFProDisplay-Regular", size: 12)!)
    public static let SFProDisplay14: Font = Font(UIFont(name: "SFProDisplay-Regular", size: 14)!)
    public static let SFProDisplay16: Font = Font(UIFont(name: "SFProDisplay-Regular", size: 16)!)
    public static let SFProDisplay17: Font = Font(UIFont(name: "SFProDisplay-Regular", size: 17)!)
    public static let SFProDisplay22: Font = Font(UIFont(name: "SFProDisplay-Regular", size: 22)!)
    public static let SFProDisplay30: Font = Font(UIFont(name: "SFProDisplay-Regular", size: 30)!)
}
