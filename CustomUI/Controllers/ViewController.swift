//
//  ViewController.swift
//  CustomUI
//
//  Created by user on 24.08.2022.
//

import UIKit

class MainViewController: UIViewController, MenuBlockDelegate {
    
    func menuElementPressed(item: UIButton) {
        if item.tag == 1 {
            print("Image Pressed!")
        } else {
            print("Label Pressed!")
        }
       
    }
    
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var limitLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.1176470444, green: 0.1176470444, blue: 0.1176470444, alpha: 1)
        let blockHeight = (view.frame.width - 45) / 2
     
        greenView.fixInView(view, topConstant: view.frame.midY - blockHeight * 2 + blockHeight * 0.7, bottomConstant: -(view.frame.midY + (blockHeight) / 2) + 30)
        limitLabel.fixInView(greenView, topConstant: 10, isActiveBottom: false, leadingConstant: 0, trailingConstant: 0)
        amountLabel.fixInView(greenView, topConstant: 50, isActiveBottom: false, leadingConstant: 0, trailingConstant: 0)

        
        let firstMenuBlock = addMenuBlock(view: view, text: "Покупка\nЧастями", x: 15, y: view.frame.midY + (blockHeight / 2), width: blockHeight, height: blockHeight, color: .systemIndigo)
        let secondMenuBlock = addMenuBlock(view: view, text: "Архив", x: view.frame.maxX - (blockHeight + 15.0), y: view.frame.midY + (blockHeight) / 2, width: blockHeight, height: blockHeight, color: .systemGray)
        let thirdMenuBlock = addMenuBlock(view: view, text: "Рассрочка на карту", x: view.frame.minX + 15.0, y: view.frame.midY - (blockHeight / 2) - 15, width: view.frame.maxX - 30.0, height: blockHeight, color: .systemGreen)
        
        firstMenuBlock.delegate = self
        secondMenuBlock.delegate = self
        thirdMenuBlock.delegate = self
            
        addCurrencyBlock(view: view, x: 0, y: view.frame.midY - blockHeight * 2, width: view.frame.maxX, height: blockHeight * 0.7)
        
    }
     
}

