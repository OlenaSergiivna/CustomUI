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
        
        let menuBlock = MenuBlockView(frame: CGRect(x: view.frame.width / 8, y: view.frame.height / 8, width: 250, height: 250))
        menuBlock.contentView.layer.cornerRadius = 40
        
        self.view.addSubview(menuBlock)
    }


}

