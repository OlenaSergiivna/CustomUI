//
//  ViewController.swift
//  CustomUI
//
//  Created by user on 24.08.2022.
//

import UIKit

class MainViewController: UIViewController, MenuBlockDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var limitLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    
    // MARK: Function that prints different text based on element type
    
    func menuElementPressed(item: UIButton) {
        if item.tag == 1 {
            print("Image Pressed!")
        } else {
            print("Label Pressed!")
        }
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Setting configurations to the Main View
        
        self.view.backgroundColor = #colorLiteral(red: 0.1176470444, green: 0.1176470444, blue: 0.1176470444, alpha: 1)
     
        
        // MARK: Setting constraints programmatically to MainView's subviews
        
        let blockHeight = (view.frame.width - 45) / 2
        
        greenView.fixInView(view, topConstant: view.frame.midY - blockHeight * 2 + blockHeight * 0.7, bottomConstant: -(view.frame.midY + (blockHeight) / 2) + 30)
        limitLabel.fixInView(greenView, topConstant: blockHeight / 15, isActiveBottom: false, leadingConstant: 80, trailingConstant: -80)
        amountLabel.fixInView(greenView, topConstant: blockHeight / 4, isActiveBottom: false, leadingConstant: 140, trailingConstant: -140)
        
        
        // MARK: Adding and configuring three MenuBlocks programmatically
        
        let firstMenuBlock = MenuBlockView()
      firstMenuBlock.addAndConfigureMenuBlock(view: view, text: "Покупка\nЧастями", x: 15, y: view.frame.midY + (blockHeight / 2), width: blockHeight, height: blockHeight, color: .systemIndigo)
        
        
        let secondMenuBlock = MenuBlockView()
        secondMenuBlock.addAndConfigureMenuBlock(view: view, text: "Архив", x: view.frame.maxX - (blockHeight + 15.0), y: view.frame.midY + (blockHeight) / 2, width: blockHeight, height: blockHeight, color: .systemGray)
        
        
        let thirdMenuBlock = MenuBlockView()
        thirdMenuBlock.addAndConfigureMenuBlock(view: view, text: "Рассрочка на карту", x: view.frame.minX + 15.0, y: view.frame.midY - (blockHeight / 2) - 15, width: view.frame.maxX - 30.0, height: blockHeight, color: .systemGreen)
        
        
        // MARK: Setting MainViewController as delegate
        
        firstMenuBlock.delegate = self
        secondMenuBlock.delegate = self
        thirdMenuBlock.delegate = self
       
        
        // MARK: Adding CurrencyBlock programmatically
        
        addCurrencyBlock(view: view, x: 0, y: view.frame.midY - blockHeight * 2, width: view.frame.maxX, height: blockHeight * 0.7)
        
    }
     
}

