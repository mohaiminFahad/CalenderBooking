//
//  CalenderCell.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import UIKit

class CalenderCell: UICollectionViewCell {

    @IBOutlet weak var dateBackground: UIView!
    @IBOutlet weak var dayOfMonth: UILabel!
    
    override var isSelected: Bool {
        didSet {
            updateSelected()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        dateBackground.roundedCorner(radius: 5)
    }

    func updateSelected() {
        if isSelected {
            dateBackground.backgroundColor = Theme.Color.yellow
        } else {
            dateBackground.backgroundColor = .clear
        }
    }
    
    func updateDeselected() {
        dateBackground.backgroundColor = .white
    }
}
