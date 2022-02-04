//
//  IphoneModelPickerViewController + UIPickerViewDataSource.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

extension IphoneModelPickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int
    {
        let selectedRow = pickerView.selectedRow(inComponent: 0)
        
        switch component {
        case 0: return self.iphoneModel.count
        case 1: return self.iphoneModel[selectedRow].colors.count
        default: return self.iphoneModel[selectedRow].capacity.count
        }
    }
}
