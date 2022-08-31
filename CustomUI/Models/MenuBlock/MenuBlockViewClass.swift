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
    
    @IBOutlet weak private var menuBlockTextButton: UIButton!
    
    @IBOutlet weak private var menuBlockImageButton: UIButton!
    
    
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
    
    
    
    func addAndConfigureMenuBlock(view: UIView, text: String, x: Double, y: Double, width: Double, height: Double, gradient: [Any], at: UInt32, image: String) {
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        self.menuBlockTextButton.setTitle(text, for: .normal)
        self.monoContentView.layer.cornerRadius = 20
        applyGradient(view: self.menuBlockImageButton, color: gradient, at: at)
        self.menuBlockImageButton.layer.cornerRadius = 0.5 * self.menuBlockImageButton.frame.width
        self.menuBlockImageButton.setImage(UIImage(named: image), for: .normal)
        
        if let imageView = self.menuBlockImageButton.imageView {
            menuBlockImageButton.bringSubviewToFront(imageView)
        }
        
        deviceFontSizeSelector(label: self.menuBlockTextButton)
        
        view.addSubview(self)
        
    }
    
    
    @IBAction func imagePressed(_ sender: UIButton) {
        delegate?.menuElementPressed(item: sender)
    }
    
    @IBAction func labelPressed(_ sender: UIButton) {
        delegate?.menuElementPressed(item: sender)
    }
}
