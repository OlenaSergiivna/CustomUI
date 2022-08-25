//
//  MenuBlockView.swift
//  CustomUI
//
//  Created by user on 25.08.2022.
//

import Foundation
import UIKit

class MenuBlockView: UIView {

    @IBOutlet weak var contentView: UIView!
    
    
    
        //let kCONTENT_XIB_NAME = "PersonView"
    
        //@IBOutlet var lblFirstName: UILabel!
       // @IBOutlet var lblLastName: UILabel!
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
        
        func commonInit() {
            Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
            contentView.fixInView(self)
        }
    }
