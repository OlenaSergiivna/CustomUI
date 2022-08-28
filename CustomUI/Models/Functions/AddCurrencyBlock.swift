//
//  AddCurrencyBlock.swift
//  CustomUI
//
//  Created by user on 27.08.2022.
//

import Foundation
import UIKit

func addCurrencyBlock(view: UIView, x: Double, y: Double, width: Double, height: Double) {
    let currencyBlock = CurrencyBlockView(frame: CGRect(x: x, y: y, width: width, height: height))
//    menuBlock.monoContentView.layer.cornerRadius = 20
//    menuBlock.monoImageView.layer.cornerRadius = 0.5 * menuBlock.monoImageView.frame.width
//    menuBlock.monoImageView.backgroundColor = color
    currencyBlock.firstView.layer.cornerRadius = 15
    currencyBlock.firstView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
    currencyBlock.secondView.layer.cornerRadius = 15
    currencyBlock.secondView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    view.addSubview(currencyBlock)
}
