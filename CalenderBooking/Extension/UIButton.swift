//
//  UIButton.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 9/7/23.
//

import UIKit

extension UIButton {
    func customizeButton(title: String, font: UIFont? = nil, textColor: UIColor?, icon: UIImage? = nil, backgroundColor color: UIColor?, cornerRadius: CGFloat? = nil, edgeInsets: NSDirectionalEdgeInsets? = nil) {
        //var buttonFont: UIFont = UIFont.TextStyle.callout
        
        var directionalEdgeinsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        var uiEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        if let insets = edgeInsets {
            directionalEdgeinsets = insets
            uiEdgeInsets = .init(top: insets.top, left: insets.leading, bottom: insets.bottom, right: insets.trailing)
        }
        
        
        
        setTitle(title, for: .normal)
        titleLabel?.numberOfLines = 1
        
        if #available(iOS 15, *) {
            var configuration = UIButton.Configuration.filled()
            
            configuration.contentInsets = directionalEdgeinsets
            configuration.baseBackgroundColor = color
            configuration.image = icon
            configuration.imagePadding = 5
#if swift(>=5.8)
            configuration.titleLineBreakMode = .byWordWrapping
            #endif
            configuration.cornerStyle = .small
            
            
            self.configuration = configuration
            
            configurationUpdateHandler = { button in
                button.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
                    var outgoing = incoming
                    if let font = font {
                        outgoing.font = font
                    }
                    
                    
                    switch button.state {
                        case .disabled:
                            outgoing.foregroundColor = .secondaryLabel
                            button.backgroundColor = .systemGray
                            
                        default:
                            outgoing.foregroundColor = textColor
                            button.backgroundColor = color
                    }
                    
                    return outgoing
                }
            }
        } else {
            contentEdgeInsets = uiEdgeInsets
            setTitleColor(textColor, for: .normal)
            setTitleColor(.secondaryLabel, for: .disabled)
            setImage(icon, for: .normal)
            imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 5)
            if let font = font {
                titleLabel?.font = font
            }
            
        }
        
        backgroundColor = color
        
        if let cornerRadius = cornerRadius {
            roundedCorner(radius: cornerRadius)
        } else {
            roundedCorner(radius: 0)
        }
    }
}
