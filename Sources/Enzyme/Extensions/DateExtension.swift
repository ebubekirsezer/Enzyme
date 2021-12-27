//
//  File.swift
//  
//
//  Created by Ebubekir Sezer on 25.12.2021.
//

import Foundation

extension Date {
    
    public func isToday() -> Bool {
        
        let otherDay = Calendar.current.dateComponents([Calendar.Component.era, Calendar.Component.year, Calendar.Component.month, Calendar.Component.day], from: self)
        
        let today = Calendar.current.dateComponents([Calendar.Component.era, Calendar.Component.year, Calendar.Component.month, Calendar.Component.day], from: Date())
        
        if today.day == otherDay.day &&
            today.month == otherDay.month &&
            today.year == otherDay.year &&
            today.era == otherDay.era { return true }
        
        return false
    }
    
    public func isYesterday() -> Bool {
        
        let otherDay = Calendar.current.dateComponents([Calendar.Component.era, Calendar.Component.year, Calendar.Component.month, Calendar.Component.day], from: self)
        
        let today = Calendar.current.dateComponents([Calendar.Component.era, Calendar.Component.year, Calendar.Component.month, Calendar.Component.day], from: Date())
        
        if (today.day ?? 0) - 1 == otherDay.day &&
            today.month == otherDay.month &&
            today.year == otherDay.year &&
            today.era == otherDay.era { return true }
        
        return false
    }
}
