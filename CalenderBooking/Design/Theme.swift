//
//  Theme.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import UIKit

class Theme {
    
    // MARK: Colors
    
    struct Color {
        static let white = UIColor.white
        static let pigmentGreen = UIColor(named: "PigmentGreen")!
        static let yellow = UIColor(named: "SelectionYellow")!
        static let pink = UIColor(named: "Pink")!
       // static let chatBackground = UIColor(named: "ChatBackground")!
    }
    
    // MARK: Fonts
    
    struct Font {
        enum Weight {
            case regular
            case medium
            case semibold
            case bold
        }
    }
    
    class func font(ofSize size: CGFloat, weight: Font.Weight = .regular) -> UIFont {
        var fontWeight: UIFont.Weight
        switch weight {
            case .regular:
                fontWeight = .regular
            case .medium:
                fontWeight = .medium
            case .semibold:
                fontWeight = .semibold
            case .bold:
                fontWeight = .bold
        }
        
        return UIFont.systemFont(ofSize: size, weight: fontWeight)
    }
    
    
    // MARK: Appearance
    
    class func keepingUpAppearances() {
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.shadowImage = UIImage()
            navBarAppearance.shadowColor = .clear
            navBarAppearance.backgroundColor = Theme.Color.pigmentGreen
            navBarAppearance.titleTextAttributes = [.foregroundColor: Theme.Color.white, .font: Theme.font(ofSize: 21, weight: .semibold)]
            UINavigationBar.appearance(whenContainedInInstancesOf: [BaseNavigationController.self]).standardAppearance = navBarAppearance
            UINavigationBar.appearance(whenContainedInInstancesOf: [BaseNavigationController.self]).scrollEdgeAppearance = navBarAppearance
        } else {
            UINavigationBar.appearance().barTintColor = Theme.Color.pigmentGreen
            UINavigationBar.appearance().shadowImage = UIImage()
            UINavigationBar.appearance().isTranslucent = false
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: Theme.Color.white, .font: Theme.font(ofSize: 21, weight: .semibold)]
        }
        
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [BaseNavigationController.self]).tintColor = Theme.Color.yellow
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [BaseNavigationController.self]).setTitleTextAttributes([.foregroundColor: Theme.Color.yellow, .font: Theme.font(ofSize: 15, weight: .semibold)], for: .normal)
        
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = Theme.Color.pigmentGreen
    }
}
