//
//  MainScreenContainerViewController + UserActionsDelegate.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 04.02.2022.
//

import Foundation
import UIKit

extension MainScreenContainerViewController: UserActionsDelegate {
    func tapHandler() {
        if self.animateConstraints.hide.isActive {
            self.animateConstraints.hide.isActive = false
            self.animateConstraints.show.isActive = true
        }
        else {
            self.animateConstraints.hide.isActive = true
            self.animateConstraints.show.isActive = false
        }
        UIView.animate(withDuration: 0.5) {
            if self.infoScreenController.mainScreen.chooseModelButton.alpha < 1 {
            self.infoScreenController.mainScreen.chooseModelButton.alpha = 1
            }
            else {
                self.infoScreenController.mainScreen.chooseModelButton.alpha = 0.2
            }
            self.view.layoutIfNeeded()
        }
    }
}
