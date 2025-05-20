//
//  AlarmSettings+CoreDataProperties.swift
//  alarmApp
//
//  Created by 최영건 on 5/20/25.
//
//

import Foundation
import CoreData


extension AlarmSettings {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AlarmSettings> {
        return NSFetchRequest<AlarmSettings>(entityName: "AlarmSettings")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var soundName: String?
    @NSManaged public var vibrationEnabled: Bool
    @NSManaged public var snoozeEnabled: Bool
    @NSManaged public var alarmVolume: Float

}

extension AlarmSettings : Identifiable {

}
