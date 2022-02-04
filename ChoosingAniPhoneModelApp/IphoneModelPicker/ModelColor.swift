//
//  ModelColor.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 04.02.2022.
//

import Foundation

    enum ModelColor: String {
        case none = "-"
        case Gold
        case SierraBlue = "Sierra Blue"
        case Gray
        case Purple
        case Green
        case Blue
        case Silver
    
        func getImageName(modelNamePrefix: String?) -> String? {
            if modelNamePrefix != nil {
                return modelNamePrefix! + self.rawValue
            }
            else { return nil }
        }
    }
