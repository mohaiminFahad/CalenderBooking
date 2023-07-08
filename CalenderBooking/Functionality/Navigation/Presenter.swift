//
//  Presenter.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import UIKit

protocol Presenter {
    func instance() -> UIViewController
    func instanceInNavigationController() -> UINavigationController
    func present(from viewController: UIViewController)
}

extension Presenter {
    func instanceInNavigationController() -> UINavigationController {
        return BaseNavigationController(rootViewController: instance())
    }
    
    /// Default presentation is to push within a navigation controller
    func present(from viewController: UIViewController) {
        viewController.navigationController?.pushViewController(instance(), animated: true)
    }
}
