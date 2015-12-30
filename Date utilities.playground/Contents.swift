import UIKit

extension NSCalendar {
    
    class func distanceBetween(dt1: NSDate, and dt2: NSDate, inUnit unit: NSCalendarUnit) -> Int {
        return abs(currentCalendar().components(unit, fromDate: dt1, toDate: dt2, options: .WrapComponents).valueForComponent(unit))
    }

}

extension NSDate {
    
    func component(unit: NSCalendarUnit) -> Int {
        return NSCalendar.currentCalendar().components(unit, fromDate: self).valueForComponent(unit)
    }
    
    func startOfDay() -> NSDate {
        return NSCalendar.currentCalendar().startOfDayForDate(self)
    }
    
    func add(value value: Int, forComponent component: NSCalendarUnit) -> NSDate? {
        return NSCalendar.currentCalendar().dateByAddingUnit(component, value: value, toDate: self, options: NSCalendarOptions())

    }
}


NSDate().component(.Month)
NSDate().startOfDay()

let now = NSDate()
let tomorrow = NSDate().add(value: 1, forComponent: .Day)
NSCalendar.distanceBetween(now, and: tomorrow!, inUnit: .Day)

