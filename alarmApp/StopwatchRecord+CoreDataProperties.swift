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

    @NSManaged public var stopwatchStartTime: NSObject?
    @NSManaged public var stopwatchEndTime: NSObject?
    @NSManaged public var stopwatchTotalTime: NSObject?
    @NSManaged public var stopwatchLapTime: NSObject?

}

extension StopwatchRecord : Identifiable {

}
