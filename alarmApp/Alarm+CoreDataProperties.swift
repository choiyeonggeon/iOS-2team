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

    @NSManaged public var createdAt: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var isEnabled: Bool
    @NSManaged public var time: Date?

}

extension Alarm : Identifiable {

}
