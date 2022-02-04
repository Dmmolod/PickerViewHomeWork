//
//  MainScreen.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

class MainScreen: UIView {
    
    weak var delegate: UserActionsDelegate?
    
    let chooseModelButton = UIButton()
//    let iphonePicker = IphoneModelPicker()
    let content = ContentView()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        self.commonInit()
        self.setupActionForButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupActionForButton() {
        self.chooseModelButton.addAction(UIAction { _ in
            self.delegate?.tapHandler()
        }, for: .touchUpInside)
    }
    
    func commonInit() {
        
        // setup choose button
        
        self.chooseModelButton.setTitle("Choose model", for: .normal)
        self.chooseModelButton.setTitleColor(.black, for: .normal)
        self.chooseModelButton.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.chooseModelButton.layer.shadowOpacity = 0.4

        self.chooseModelButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(self.chooseModelButton)
        NSLayoutConstraint.activate([
            self.chooseModelButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.chooseModelButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            self.chooseModelButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        // setup content
        
        self.addSubview(self.content)
        NSLayoutConstraint.activate([
            self.content.topAnchor.constraint(equalTo: self.topAnchor),
            self.content.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.content.widthAnchor.constraint(equalTo: self.widthAnchor),
            self.content.bottomAnchor.constraint(equalTo: self.chooseModelButton.topAnchor)
        ])
    }
    
}
