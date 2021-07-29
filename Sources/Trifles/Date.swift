//
//  File.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-27.
//

import Foundation

public extension Date {

    /// Returns the date for the last occured midnight, local time.
    static var todayMidnight: Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month, .day], from: Date()))!
    }

    /// Returns the date for the first future occuring midnight, local time.
    static var tomorrowMidnight: Date {
        return todayMidnight.addingTimeInterval(60 * 60 * 24)
    }

    /// Returns the date for the second last occured midnight, local time.
    static var yesterdayMidnight: Date {
        return todayMidnight.addingTimeInterval(-60 * 60 * 24)
    }
}
