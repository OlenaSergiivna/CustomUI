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
        
        let menuBlock = MenuBlockView(frame: CGRect(x: view.frame.minX + 20, y: view.frame.midY + 100, width: 200, height: 200))
        menuBlock.contentView.layer.cornerRadius = 40
       
        self.view.addSubview(menuBlock)
    }


}

