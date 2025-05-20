//
//  Alarm+CoreDataProperties.swift
//  alarmApp
//
//  Created by 최영건 on 5/20/25.
//
//

import Foundation
import CoreData


extension Alarm {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Alarm> {
        return NSFetchRequest<Alarm>(entityName: "Alarm")
    }

    @NSManaged public var alarmTime: NSObject?
    @NSManaged public var alarmSound: Bool
    @NSManaged public var alarmVibration: Bool
    @NSManaged public var alarmLabel: String?
    @NSManaged public var alarmDate: String?

}

extension Alarm : Identifiable {

}
