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
        
        let menuBlock = MenuBlockView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        self.view.addSubview(menuBlock)
    }


}

