//
//  IphoneModelPicker.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

class IphoneModelPicker: UIView {
    
    let pickerView = UIPickerView()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        self.pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.pickerView)
        NSLayoutConstraint.activate([
            self.pickerView.topAnchor.constraint(equalTo: self.topAnchor),
            self.pickerView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.pickerView.rightAnchor.constraint(equalTo: self.rightAnchor),
        ])
    }
    
}
