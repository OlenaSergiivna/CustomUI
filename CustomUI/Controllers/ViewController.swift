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
        
        let menuBlockOne = MenuBlockView(frame: CGRect(x: view.frame.minX + 20, y: view.frame.midY + 100, width: view.frame.height / 5, height: view.frame.height / 5))
        menuBlockOne.contentView.layer.cornerRadius = 20
        
        let menuBlockTwo = MenuBlockView(frame: CGRect(x: view.frame.maxX - 200, y: view.frame.midY + 100, width: view.frame.height / 5, height: view.frame.height / 5))
        menuBlockTwo.contentView.layer.cornerRadius = 20
       
        self.view.addSubview(menuBlockOne)
        self.view.addSubview(menuBlockTwo)
    }


}

