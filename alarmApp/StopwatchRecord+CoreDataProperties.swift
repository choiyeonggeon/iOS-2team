//
//  StopwatchRecord+CoreDataProperties.swift
//  alarmApp
//
//  Created by 최영건 on 5/20/25.
//
//

import Foundation
import CoreData


extension StopwatchRecord {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StopwatchRecord> {
        return NSFetchRequest<StopwatchRecord>(entityName: "StopwatchRecord")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var startTime: Date?
    @NSManaged public var endTime: Date?
    @NSManaged public var totalTime: Double
    @NSManaged public var lapTimes: NSObject?

}

extension StopwatchRecord : Identifiable {

}
