//
//  TimeSelectViewController.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 9/7/23.
//

import UIKit

class TimeSelectViewController: UIViewController {

    @IBOutlet weak var multipleDaysButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var setHours: UIButton!
    
    var date: Date = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = Theme.Color.pigmentGreen
        setupView()
    }


    func setupView() {
        multipleDaysButton.customizeButton(title: "Set hours to multiple days", textColor: .white, backgroundColor: Theme.Color.pigmentGreen)
        multipleDaysButton.roundedCorner(radius: 10)
        multipleDaysButton.setBorder(width: 1, color: .white)
        
        deleteButton.customizeButton(title: "Delete", textColor: .white, backgroundColor: Theme.Color.pigmentGreen)
        deleteButton.roundedCorner(radius: 10)
        deleteButton.setBorder(width: 1, color: .white)
        
        setHours.customizeButton(title: "Set Hours", textColor: .red, backgroundColor: .white)
        setHours.roundedCorner(radius: 10)
    }

}
