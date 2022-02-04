//
//  MainScreenContainerViewController.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

class MainScreenContainerViewController: UIViewController {
    
    let infoScreenController = MainScreenViewController()
    let pickerScreenController = IphoneModelPickerViewController()
    
    lazy var animateConstraints = (hide: self.pickerScreenController.iphoneModelPickerView.topAnchor.constraint(equalTo: self.view.bottomAnchor),
                                   show: self.pickerScreenController.iphoneModelPickerView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/4))
    
    override func loadView() {
        self.view = UIView()
        print(pickerScreenController)
        self.addChild(self.infoScreenController)
        self.addChild(self.pickerScreenController)
        
        self.view.addSubview(self.infoScreenController.mainScreen)
        self.view.addSubview(self.pickerScreenController.iphoneModelPickerView)
        
        self.pickerScreenController.iphoneModelPickerView.translatesAutoresizingMaskIntoConstraints = false
        self.infoScreenController.mainScreen.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.infoScreenController.mainScreen.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.infoScreenController.mainScreen.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.infoScreenController.mainScreen.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            
            self.pickerScreenController.iphoneModelPickerView.topAnchor.constraint(equalTo: self.infoScreenController.mainScreen.bottomAnchor),
            
            self.pickerScreenController.iphoneModelPickerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.pickerScreenController.iphoneModelPickerView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            self.pickerScreenController.iphoneModelPickerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        self.animateConstraints.hide.isActive = true
        
        
        self.infoScreenController.didMove(toParent: self)
        self.pickerScreenController.didMove(toParent: self)
        
        self.infoScreenController.mainScreen.delegate = self
        self.pickerScreenController.delegate = self.infoScreenController
    }
    
}
