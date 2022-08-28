//
//  File.swift
//  CustomUI
//
//  Created by user on 28.08.2022.
//

import Foundation
import UIKit

func deviceFontSizeSelector(label: UILabel, iPhone_8_SE: CGFloat = 17, iPod_touch: CGFloat = 13, iPhone_12_13_mini: CGFloat = 17, allDevices: CGFloat = 20) {
    let deviceType = UIDevice.current.deviceType
    
    switch deviceType {
    case .iPhone_8_SE:
        label.font = UIFont.systemFont(ofSize: iPhone_8_SE)
    case .iPod_touch:
        label.font = UIFont.systemFont(ofSize: iPod_touch)
    case .iPhone_12_13_mini:
        label.font = UIFont.systemFont(ofSize: iPhone_12_13_mini)
    case .unknown:
        label.font.withSize(allDevices)
    }
}
