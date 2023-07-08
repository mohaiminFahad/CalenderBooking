//
//  UIView.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 9/7/23.
//

import UIKit

extension UIView {
    func roundedCorner(corners: CACornerMask = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner],radius cornerRadius: CGFloat = 10, masks: Bool = true, clips: Bool = false) {
        layer.maskedCorners = corners
        layer.cornerRadius = cornerRadius
        clipsToBounds = clips
        layer.masksToBounds = masks
    }
    
    func setBorder(width borderWidth: CGFloat = 1, color borderColor: UIColor? = .secondaryLabel, background: UIColor? = nil) {
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
        layer.backgroundColor = background?.cgColor
    }
}
