//
//  IphoneModelPickerViewController.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

class IphoneModelPickerViewController: UIViewController {
    
    typealias IphoneModel = (name: ModelName, colors: [ModelColor], capacity: [String])
    
    weak var delegate: IphoneModelPickerDelegate?
    
    let iphoneModel: [IphoneModel] = [
        (name: .none, colors: [.none], capacity: ["-"]),
        (name: .iphone13pro, colors: [.none, .Silver, .SierraBlue, .Gold, .Gray], capacity: ["-", "256", "512", "1024"]),
        (name: .iphone12pro, colors: [.none, .Blue, .Gray], capacity: ["-", "128", "256", "512", "1024"]),
        (name: .iphone12, colors: [.none, .Purple], capacity: ["-", "128", "256", "512"]),
        (name: .iphone11pro, colors: [.none, .Green], capacity: ["-", "64", "128", "256", "512"])
    ]
    
    let iphoneModelPickerView = IphoneModelPicker()

    init() {
        super.init(nibName: nil, bundle: nil)
        self.view = self.iphoneModelPickerView
        self.iphoneModelPickerView.pickerView.delegate = self
        self.iphoneModelPickerView.pickerView.dataSource = self
        print("load")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
