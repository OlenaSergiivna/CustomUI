//
//  File.swift
//  CustomUI
//
//  Created by user on 28.08.2022.
//

import Foundation
import UIKit

// MARK: Function, that changes font depending on device type

func deviceFontSizeSelector(label: UIButton, iPhone_8_SE: CGFloat = 17, iPod_touch: CGFloat = 13, iPhone_12_13_mini: CGFloat = 17, allDevices: CGFloat = 21) {
    let deviceType = UIDevice.current.deviceType
    
    switch deviceType {
    case .iPhone_8_SE:
        label.titleLabel?.font = UIFont.systemFont(ofSize: iPhone_8_SE)
    case .iPod_touch:
        label.titleLabel?.font = UIFont.systemFont(ofSize: iPod_touch)
    case .iPhone_12_13_mini:
        label.titleLabel?.font = UIFont.systemFont(ofSize: iPhone_12_13_mini)
    case .unknown:
        label.titleLabel?.font = UIFont.systemFont(ofSize: allDevices)
    }
}
