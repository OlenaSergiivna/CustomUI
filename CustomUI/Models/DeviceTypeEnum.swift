//
//  DeviceTypeEnum.swift
//  CustomUI
//
//  Created by user on 28.08.2022.
//

import Foundation
import UIKit

extension UIDevice {
    
    enum DeviceType: String {
        case iPhone_8_SE = "iPhone 8 or iPhone SE"
        case iPod_touch = "iPod touch"
        case unknown = "iPhone or iPad"
    }
    
    var deviceType: DeviceType {
        switch UIScreen.main.nativeBounds.height {
        case 1334: return .iPhone_8_SE
        case 1136: return .iPod_touch
        default: return .unknown
        }
    }
}


func deviceFontSelector(label: UILabel) {
    let deviceType = UIDevice.current.deviceType
    
    switch deviceType {
    case .iPhone_8_SE:
        label.font.withSize(15)
    case .iPod_touch:
        label.font.withSize(15)
    case .unknown:
        label.font.withSize(20)
    }
}
