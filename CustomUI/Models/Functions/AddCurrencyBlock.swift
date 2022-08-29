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
    currencyBlock.firstView.layer.cornerRadius = 15
    currencyBlock.firstView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
    currencyBlock.secondView.layer.cornerRadius = 15
    currencyBlock.secondView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    view.addSubview(currencyBlock)
}
