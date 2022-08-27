//
//  ViewController.swift
//  CustomUI
//
//  Created by user on 24.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.1176470444, green: 0.1176470444, blue: 0.1176470444, alpha: 1)
        
        let blockHeight = (view.frame.width - 45) / 2
        
        addMenuBlock(view: view, text: "Покупка\nЧастями", x: 15, y: view.frame.midY + (blockHeight / 2), width: blockHeight, height: blockHeight, color: .systemIndigo)
        addMenuBlock(view: view, text: "Архив", x: view.frame.maxX - (blockHeight + 15.0), y: view.frame.midY + (blockHeight) / 2, width: blockHeight, height: blockHeight, color: .systemGray)
        addMenuBlock(view: view, text: "Рассрочка на карту", x: view.frame.minX + 15.0, y: view.frame.midY - (blockHeight / 2) - 15, width: view.frame.maxX - 30.0, height: blockHeight, color: .systemGreen)
        
        addCurrencyBlock(view: view, x: 0, y: view.frame.midY - blockHeight * 2, width: view.frame.maxX, height: blockHeight * 0.7)
        
        
    }
     
}


