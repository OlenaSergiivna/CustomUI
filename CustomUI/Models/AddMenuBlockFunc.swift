//
//  AddMenuBlockFunc.swift
//  CustomUI
//
//  Created by user on 26.08.2022.
//

import Foundation
import UIKit

// + add image

func addMenuBlock(view: UIView, text: String) {
    
    let menuBlockOne = MenuBlockView(frame: CGRect(x: view.frame.minX + 15, y: view.frame.midY + 100, width: view.frame.height / 4.9, height: view.frame.height / 4.9))
    menuBlockOne.contentView.layer.cornerRadius = 20
    menuBlockOne.imageView.layer.cornerRadius = 0.37 * menuBlockOne.imageView.frame.width
    
    view.addSubview(menuBlockOne)
}
