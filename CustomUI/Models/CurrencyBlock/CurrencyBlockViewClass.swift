//
//  File.swift
//  CustomUI
//
//  Created by user on 27.08.2022.
//

import Foundation
import UIKit

class CurrencyBlockView: UIView {
    
    @IBOutlet weak var currencyContentView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("CurrencyBlock", owner: self, options: nil)
        currencyContentView.fixInView(self)
    }
}
