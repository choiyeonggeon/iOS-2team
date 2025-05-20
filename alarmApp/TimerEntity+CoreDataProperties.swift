//
//  TimerEntity+CoreDataProperties.swift
//  alarmApp
//
//  Created by 최영건 on 5/20/25.
//
//

import Foundation
import CoreData


extension TimerEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TimerEntity> {
        return NSFetchRequest<TimerEntity>(entityName: "TimerEntity")
    }

    @NSManaged public var timerLabel: Bool
    @NSManaged public var timerVibration: Bool
    @NSManaged public var timerSound: Bool
    @NSManaged public var timerTime: Bool

}

extension TimerEntity : Identifiable {

}
