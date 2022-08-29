//
//  MenuBlockView.swift
//  CustomUI
//
//  Created by user on 25.08.2022.
//

import Foundation
import UIKit


protocol MenuBlockDelegate: NSObject {
    
    func menuElementPressed(item: UIButton)
}


class MenuBlockView: UIView {
    
    weak var delegate: MenuBlockDelegate?
    
    @IBOutlet weak var monoContentView: UIView!
    
    @IBOutlet weak var monoTextLabel: UIButton!
    
    
    @IBOutlet weak var monoImageView: UIButton!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("MenuBlock", owner: self, options: nil)
        monoContentView.fixInView(self)
    }
    
//    func configure(with text: String, image: UIImage) {
//
//    }
//
    
    @IBAction func imagePressed(_ sender: UIButton) {
        delegate?.menuElementPressed(item: sender)
    }
    
    @IBAction func labelPressed(_ sender: UIButton) {
        delegate?.menuElementPressed(item: sender)
    }
}
