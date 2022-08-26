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
    }

    extension UIView {
        
        func fixInView(_ container: UIView!) -> Void {
            self.translatesAutoresizingMaskIntoConstraints = false;
            self.frame = container.frame;
            container.addSubview(self);
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        }
    }
