//
//  MenuBlockView.swift
//  CustomUI
//
//  Created by user on 25.08.2022.
//

import Foundation
import UIKit

 class MenuBlockView: UIView {

    @IBOutlet weak var monoContentView: UIView!
    
    @IBOutlet weak var monoTextLabel: UILabel!
    
    @IBOutlet weak var monoImageView: UIView!
    
    
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
    
    func configure(with text: String, image: UIImage) {
        
    }
 }
