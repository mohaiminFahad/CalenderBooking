//
//  BaseNavigationController.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    enum Color {
        case white
        case orange
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apply(.orange)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return viewControllers.last?.preferredStatusBarStyle ?? .lightContent
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIDevice.current.userInterfaceIdiom == .pad ? .all : .portrait
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    func apply(_ color: Color) {
        switch color {
            case .orange:
                navigationBar.barTintColor = Theme.Color.pigmentGreen
                navigationBar.titleTextAttributes = [.foregroundColor: Theme.Color.white, .font: Theme.font(ofSize: 21, weight: .semibold)]
                navigationBar.tintColor = Theme.Color.white
            case .white:
                navigationBar.barTintColor = Theme.Color.white
                navigationBar.titleTextAttributes = [.foregroundColor: Theme.Color.pigmentGreen, .font: Theme.font(ofSize: 21, weight: .semibold)]
                navigationBar.tintColor = Theme.Color.pigmentGreen
        }
    }
    
}
