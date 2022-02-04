//
//  IphoneModelPickerDelegate.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation

protocol IphoneModelPickerDelegate: AnyObject {
    func modelDidSelect(_ picker: IphoneModelPickerViewController,
                        didSelect info: (modelName: String,
                                         color: String,
                                         capacity: String,
                                         imageName: String?))
}
