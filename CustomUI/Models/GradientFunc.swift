//
//  GradientFunc.swift
//  CustomUI
//
//  Created by user on 31.08.2022.
//

import Foundation
import UIKit

func applyGradient(view: UIView, color: [Any]) {
        
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = view.bounds
    gradientLayer.type = .axial
    gradientLayer.colors = color
    gradientLayer.shouldRasterize = true
    view.layer.insertSublayer(gradientLayer, above: view.layer)

    }
