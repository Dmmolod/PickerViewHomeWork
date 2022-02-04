//
//  MainScreenViewController + IphoneModelPickerDelegate.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

extension MainScreenViewController: IphoneModelPickerDelegate {
    
    func modelDidSelect(_ picker: IphoneModelPickerViewController,
                        didSelect info: (modelName: String,
                                         color: String,
                                         capacity: String,
                                         imageName: String?))
    {
        self.mainScreen.content.iphoneImage = info.imageName
        var capacity = info.capacity
        if Int(info.capacity) != nil {
            capacity = info.capacity + " gb"
        }
        self.mainScreen.content.text = "Характеристики:\n--------------\nНазвание модели: \(info.modelName.lowercased())\n\nЦвет: \(info.color)\n\nОбьем памяти: \(capacity)"
    }
}
