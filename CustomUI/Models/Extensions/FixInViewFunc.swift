//
//  FixIn.swift
//  CustomUI
//
//  Created by user on 29.08.2022.
//

import Foundation
import UIKit

extension UIView {
    
    func fixInView(_ container: UIView!, topConstant: CGFloat = 0, bottomConstant: CGFloat = 0, isActiveBottom: Bool = true, leadingConstant: CGFloat = 0, trailingConstant: CGFloat = 0) -> Void {
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: leadingConstant).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: trailingConstant).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: topConstant).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: bottomConstant).isActive = isActiveBottom
    }
}
