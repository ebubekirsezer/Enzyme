//
//  File.swift
//  
//
//  Created by Ebubekir Sezer on 25.12.2021.
//

import Foundation

extension Date {

    public var today: Date? { return Calendar.current.date(from: todayComponents) }
    public var yesterday: Date { return Date().dayBefore }
    public var tomorrow:  Date { return Date().dayAfter }
    
    public var isToday: Bool {
        return self == today
    }
    public var isYesterday: Bool {
        return self == yesterday
    }
    public var isTomorrow: Bool {
        return self == tomorrow
    }
    var todayComponents: DateComponents {
        Calendar.current.dateComponents([Calendar.Component.era, Calendar.Component.year, Calendar.Component.month, Calendar.Component.day], from: Date())
    }
    var dayBefore: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: noon)!
    }
    var dayAfter: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: noon)!
    }
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    var month: Int {
        return Calendar.current.component(.month,  from: self)
    }
    var isLastDayOfMonth: Bool {
        return dayAfter.month != month
    }
}
