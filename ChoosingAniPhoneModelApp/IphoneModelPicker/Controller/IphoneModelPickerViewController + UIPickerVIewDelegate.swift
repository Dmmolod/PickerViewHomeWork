//
//  IphoneModelPickerViewController + UIPickerViewDelegate.swift
//  ChoosingAniPhoneModelApp
//
//  Created by Дмитрий Молодецкий on 03.02.2022.
//

import Foundation
import UIKit

extension IphoneModelPickerViewController: UIPickerViewDelegate  {
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let infoCell = (view as? UILabel) ?? UILabel()
        infoCell.numberOfLines = 2
        infoCell.textAlignment = .center
        let selectedRow = pickerView.selectedRow(inComponent: 0)
        
        switch component {
        case 0:
            infoCell.text = self.iphoneModel[row].name.rawValue
        case 1:
            infoCell.text = self.iphoneModel[selectedRow].colors[row].rawValue
        default:
            infoCell.text = self.iphoneModel[selectedRow].capacity[row]
        }
        return infoCell
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    rowHeightForComponent component: Int) -> CGFloat
    {
        return 50
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    didSelectRow row: Int,
                    inComponent component: Int)
    {
        pickerView.reloadComponent(1)
        pickerView.reloadComponent(2)
        
        if component == 0 {
            pickerView.selectRow(0, inComponent: 1, animated: true)
            pickerView.selectRow(0, inComponent: 2, animated: true)
        }
        
        
        let modelIndex = pickerView.selectedRow(inComponent: 0)
        let colorIndex = pickerView.selectedRow(inComponent: 1)
        let capacityIndex = pickerView.selectedRow(inComponent: 2)
        
        let currentModel = self.iphoneModel[modelIndex]
        
        let imageName = currentModel.colors[colorIndex].getImageName(modelNamePrefix: currentModel.name.getPrefixImageName())
        
        self.delegate?.modelDidSelect(self,
                                      didSelect: (modelName: currentModel.name.rawValue,
                                                  color: currentModel.colors[colorIndex].rawValue,
                                                  capacity: currentModel.capacity[capacityIndex],
                                                  imageName: imageName))
    }
}
