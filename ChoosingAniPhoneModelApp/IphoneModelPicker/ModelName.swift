//
//  ModelName.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 04.02.2022.
//

import Foundation

enum ModelName: String {
    case none = "-"
    case iphone11pro = "Iphone 11 pro"
    case iphone12 = "Iphone 12"
    case iphone12pro = "Iphone 12 pro"
    case iphone13pro = "Iphone 13 pro"
    
        
    func getPrefixImageName() -> String? {
        switch self {
        case .none: return nil
        case .iphone11pro: return "11pro"
        case .iphone12: return "12"
        case .iphone12pro:  return "12pro"
        case .iphone13pro: return "13pro"
        }
    }
}
