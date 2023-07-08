//
//  CalenderPresenter.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import UIKit

struct CalenderPresenter: Presenter {
    
    func instance() -> UIViewController {
        let instance = CalenderViewController.loadFromNib()
        
        return instance
    }
    
    func present(from viewController: UIViewController) {
        SCENEDELEGATE?.setRootViewController(instanceInNavigationController(), animated: false)
    }
}

