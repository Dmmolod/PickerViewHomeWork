//
//  ContentView.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

class ContentView: UIView {
    
    private let iphoneModelImageView = UIImageView()
    private let infoLable = UILabel()
    private var imageName: String?
    
    var text: String? {
        set {
            self.infoLable.text = newValue
        }
        get {
            return self.infoLable.text
        }
    }
    
    var iphoneImage: String? {
        set {
            guard let newImageName = newValue,
                  let newImage = UIImage(named: newImageName)
            else {
                self.iphoneModelImageView.image = UIImage(systemName: "iphone")
                return
            }
            self.iphoneModelImageView.image = newImage
        }
        
        get {
            guard let imageName = self.imageName else { return "None" }
            return imageName
        }
    }
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        
        // setup Iphone model image view
        
        self.iphoneModelImageView.translatesAutoresizingMaskIntoConstraints = false
        self.iphoneModelImageView.contentMode = .scaleAspectFit
        
        self.iphoneImage = "iphone"
        
        // setup info lable

        self.infoLable.translatesAutoresizingMaskIntoConstraints = false
        self.infoLable.layer.shadowOpacity = 0.2
        self.infoLable.textAlignment = .left
        self.infoLable.numberOfLines = 0
        self.text = "Характеристики:"
        
        // setup constreints
        self.setupConstraints()
    }
    
    private func setupConstraints() {
        
        self.addSubview(self.iphoneModelImageView)
        self.addSubview(self.infoLable)
        NSLayoutConstraint.activate([
            self.iphoneModelImageView.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.iphoneModelImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            self.iphoneModelImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.iphoneModelImageView.rightAnchor.constraint(equalTo: self.infoLable.leftAnchor),
            
            self.infoLable.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.infoLable.topAnchor.constraint(equalTo: self.iphoneModelImageView.centerYAnchor, constant: -100),
            self.infoLable.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2.5)
        ])

    }
}
