//
//  TimeSelectPresenter.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 9/7/23.
//

import UIKit

class TimeSelectPresenter: Presenter {
    var date: Date = .init()
    
    func instance() -> UIViewController {
        let instance = TimeSelectViewController.loadFromNib()
        
        return instance
    }
    
    func present(from viewController: UIViewController) {
        var controller = instance() as? TimeSelectViewController
        controller?.date = date
        
        viewController.navigationController?.pushViewController(controller ?? instance(), animated: true)
    }
}
