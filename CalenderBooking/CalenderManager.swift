//
//  CalenderManager.swift
//  CalenderBooking
//
//  Created by Mohaimin Fahad on 8/7/23.
//

import Foundation
import UIKit

class CalendedrManager{
    
    static var shared = CalendedrManager()
    
    let currentCalender = Calendar.current
    
    func getAllDatesInMonth(year: Int, month: Int) -> [Date] {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        guard let startDate = currentCalender.date(from: dateComponents),
              let endDate = currentCalender.date(byAdding: DateComponents(month: 1, day: -1), to: startDate) else {
            return []
        }
        
        var dates: [Date] = []
        var currentDate = startDate
        
        while currentDate <= endDate {
            dates.append(currentDate)
            currentDate = currentCalender.date(byAdding: .day, value: 1, to: currentDate)!
        }
        
        return dates
    }
    
    func getDateAndDay(from:Date) -> (date: String,day: String){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd"
        let dateString = dateFormatter.string(from: from)
        
        let dayFormatter = DateFormatter()
        dayFormatter.dateFormat = "EEE"
        let dayString = dayFormatter.string(from: from)
        return (dateString,dayString)
    }
}

