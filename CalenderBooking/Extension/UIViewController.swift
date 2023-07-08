//
//  UIViewController.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import UIKit

extension UIViewController {
    static func loadFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>() -> T {
            return T.init(nibName: String(describing: T.self), bundle: nil)
        }
        
        return instantiateFromNib()
    }
}
