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
    
    @IBOutlet weak private var monoContentView: UIView!
    
    @IBOutlet weak private var monoTextLabel: UIButton!
    
    @IBOutlet weak private var monoImageView: UIButton!
    
    
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
    
    func addAndConfigureMenuBlock(view: UIView, text: String, x: Double, y: Double, width: Double, height: Double, color: UIColor, image: String) {
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        self.monoTextLabel.setTitle(text, for: .normal)
        self.monoContentView.layer.cornerRadius = 20
        self.monoImageView.layer.cornerRadius = 0.5 * self.monoImageView.frame.width
        self.monoImageView.backgroundColor = color
        self.monoImageView.setImage(UIImage(named: image), for: .normal)
        deviceFontSizeSelector(label: self.monoTextLabel)
        view.addSubview(self)
        
    }
    
    @IBAction func imagePressed(_ sender: UIButton) {
        delegate?.menuElementPressed(item: sender)
    }
    
    @IBAction func labelPressed(_ sender: UIButton) {
        delegate?.menuElementPressed(item: sender)
    }
}
