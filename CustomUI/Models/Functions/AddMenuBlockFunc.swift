//
//  AddMenuBlockFunc.swift
//  CustomUI
//
//  Created by user on 26.08.2022.
//

import Foundation
import UIKit

// + add image

func addMenuBlock(view: UIView, text: String, x: Double, y: Double, width: Double, height: Double, color: UIColor) -> MenuBlockView {
    let menuBlock = MenuBlockView(frame: CGRect(x: x, y: y, width: width, height: height))
    menuBlock.monoTextLabel.text = text
    menuBlock.monoContentView.layer.cornerRadius = 20
    menuBlock.monoImageView.layer.cornerRadius = 0.5 * menuBlock.monoImageView.frame.width
    menuBlock.monoImageView.backgroundColor = color
    deviceFontSizeSelector(label: menuBlock.monoTextLabel)
    view.addSubview(menuBlock)
    
    return menuBlock
}
