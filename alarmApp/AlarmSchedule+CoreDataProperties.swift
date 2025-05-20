//
//  AlarmSchedule+CoreDataProperties.swift
//  alarmApp
//
//  Created by 최영건 on 5/20/25.
//
//

import Foundation
import CoreData


extension AlarmSchedule {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AlarmSchedule> {
        return NSFetchRequest<AlarmSchedule>(entityName: "AlarmSchedule")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var repeatDays: NSObject?

}

extension AlarmSchedule : Identifiable {

}
