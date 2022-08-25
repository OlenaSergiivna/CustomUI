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
        
        let menuBlockOne = MenuBlockView(frame: CGRect(x: view.frame.minX + 15, y: view.frame.midY + 100, width: view.frame.height / 4.9, height: view.frame.height / 4.9))
        menuBlockOne.contentView.layer.cornerRadius = 20
        menuBlockOne.textLabel.text = "Покупка\nЧастями"
        menuBlockOne.imageView.layer.cornerRadius = 0.37 * menuBlockOne.imageView.frame.width
        
        let menuBlockTwo = MenuBlockView(frame: CGRect(x: view.frame.maxX - ((view.frame.height / 4.8) + 15) , y: view.frame.midY + 100, width: view.frame.height / 4.9, height: view.frame.height / 4.9))
        menuBlockTwo.contentView.layer.cornerRadius = 20
        menuBlockTwo.textLabel.text = "Архив"
        menuBlockTwo.imageView.layer.cornerRadius = 0.37 * menuBlockTwo.imageView.frame.height
        menuBlockTwo.imageView.layer.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
       
        self.view.addSubview(menuBlockOne)
        self.view.addSubview(menuBlockTwo)
    }


}

