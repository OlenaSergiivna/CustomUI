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
        case iPhone_12_13_mini = "iPhone 12,13 mini"
        case unknown = "iPhone or iPad"
    }
    
    var deviceType: DeviceType {
        switch UIScreen.main.nativeBounds.height {
        case 1334: return .iPhone_8_SE
        case 1136: return .iPod_touch
        case 2340: return .iPhone_12_13_mini
        default: return .unknown
        }
    }
}
