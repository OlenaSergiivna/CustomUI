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
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    
    // MARK: Function that prints different text, based on element type
    
    func menuElementPressed(item: UIButton) {
        if item.tag == 1 {
            print("Image Pressed!")
            print("minX: \(greenView.frame.minX). MaxX: \(greenView.frame.maxX). MinY: \(greenView.frame.minY). MaxY: \(greenView.frame.midY). Height: \(greenView.frame.height). Width: \(greenView.frame.width)")
        } else {
            print("Label Pressed!")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // MARK: Setting configurations to the Main View
        
        self.view.backgroundColor = #colorLiteral(red: 0.1176470444, green: 0.1176470444, blue: 0.1176470444, alpha: 1)
        
        
        // MARK: Setting frames programmatically to MainView's subviews
        
        let blockHeight = (view.frame.width - 45) / 2
        
        greenView.frame = CGRect(x: view.frame.minX, y: view.frame.midY - blockHeight * 1.2, width: view.frame.width, height: blockHeight)
        applyGradient(view: greenView, color: [ #colorLiteral(red: 0.08013602346, green: 0.6134784818, blue: 0.3332336247, alpha: 1).cgColor, #colorLiteral(red: 0.05025497079, green: 0.4551060796, blue: 0.3943584263, alpha: 1).cgColor], at: 0)
        
        limitLabel.frame = CGRect(x: greenView.frame.minX + 80, y: greenView.frame.height / 29, width: greenView.frame.width - 160, height: 30)
        
        amountLabel.frame = CGRect(x: greenView.frame.minX + 140, y: greenView.frame.height / 4, width: greenView.frame.width - 285, height: 50)
        
        leftButton.frame = CGRect(x: greenView.frame.minX + 10, y: greenView.frame.height / 15, width: 25, height: 25)
        
        rightButton.frame = CGRect(x: greenView.frame.width - 40, y: greenView.frame.height / 15, width: 25, height: 25)
        
        
        
        // MARK: Adding and configuring three MenuBlocks programmatically
        
        let firstMenuBlock = MenuBlockView()
        firstMenuBlock.addAndConfigureMenuBlock(view: view, text: "Покупка\nЧастями", x: 15, y: view.frame.midY + (blockHeight / 2), width: blockHeight, height: blockHeight, gradient: [ #colorLiteral(red: 0.4913454652, green: 0.3840733469, blue: 0.7313657999, alpha: 1).cgColor, #colorLiteral(red: 0.4519740343, green: 0.3445723057, blue: 0.6876134276, alpha: 1).cgColor], at: 0, image: "paw")
        
        
        let secondMenuBlock = MenuBlockView()
        secondMenuBlock.addAndConfigureMenuBlock(view: view, text: "Архив", x: view.frame.maxX - (blockHeight + 15.0), y: view.frame.midY + (blockHeight) / 2, width: blockHeight, height: blockHeight, gradient: [#colorLiteral(red: 0.4894579053, green: 0.6020491719, blue: 0.652957201, alpha: 1).cgColor, #colorLiteral(red: 0.4348018765, green: 0.5267388225, blue: 0.5866801143, alpha: 1) .cgColor], at: 0, image: "check")
        
        
        let thirdMenuBlock = MenuBlockView()
        thirdMenuBlock.addAndConfigureMenuBlock(view: view, text: "Рассрочка на карту", x: view.frame.minX + 15.0, y: view.frame.midY - (blockHeight / 2) - 15, width: view.frame.maxX - 30.0, height: blockHeight, gradient: [#colorLiteral(red: 0.1306113005, green: 0.741311729, blue: 0.4202265143, alpha: 1).cgColor, #colorLiteral(red: 0.1069343612, green: 0.5951247811, blue: 0.4803116918, alpha: 1).cgColor], at: 0, image: "diagram")
        
        
        // MARK: Setting MainViewController as delegate for three MenuBlocks
        
        firstMenuBlock.delegate = self
        secondMenuBlock.delegate = self
        thirdMenuBlock.delegate = self
        
        
        // MARK: Adding and configuring CurrencyBlock programmatically
        
        addCurrencyBlock(view: view, x: 0, y: view.frame.midY - blockHeight * 2, width: view.frame.maxX, height: blockHeight * 0.8)
        
    }
    
}

