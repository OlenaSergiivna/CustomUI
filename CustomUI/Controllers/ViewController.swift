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
        
        let menuBlock = MenuBlockView(frame: CGRect(x: view.frame.minX + 20, y: view.frame.height / 8, width: 150, height: 150))
        menuBlock.contentView.layer.cornerRadius = 40
        
        self.view.backgroundColor = #colorLiteral(red: 0.1176470444, green: 0.1176470444, blue: 0.1176470444, alpha: 1)
        
        self.view.addSubview(menuBlock)
    }


}

