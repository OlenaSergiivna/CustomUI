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
        
       addMenuBlock(view: view, text: "Покупка\nЧастями")
        
        let menuBlockTwo = MenuBlockView(frame: CGRect(x: view.frame.maxX - ((view.frame.height / 4.8) + 15) , y: view.frame.midY + ((view.frame.height / 4.9) / 2), width: view.frame.height / 4.9, height: view.frame.height / 4.9))
        menuBlockTwo.contentView.layer.cornerRadius = 20
        menuBlockTwo.textLabel.text = "Архив"
        menuBlockTwo.imageView.layer.cornerRadius = 0.5 * menuBlockTwo.imageView.frame.height
        menuBlockTwo.imageView.layer.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        
        let menuBlockThree = MenuBlockView(frame: CGRect(x: view.frame.minX + 15, y: view.frame.midY - ((view.frame.height / 4.9) / 2) - 15, width: view.frame.maxX - 30, height: view.frame.height / 4.9))
        menuBlockThree.contentView.layer.cornerRadius = 20
        menuBlockThree.textLabel.text = "Рассрочка на карту"
        menuBlockThree.imageView.backgroundColor = .systemGreen
        menuBlockThree.imageView.layer.cornerRadius = 0.5 * menuBlockThree.imageView.frame.width
        
        self.view.addSubview(menuBlockTwo)
        self.view.addSubview(menuBlockThree)
    }
    
    
}

