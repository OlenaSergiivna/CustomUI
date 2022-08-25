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
        
        let menuBlock = MenuBlockView()
        self.view.addSubview(menuBlock)
    }


}

