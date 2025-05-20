//
//  Entity+CoreDataProperties.swift
//  alarmApp
//
//  Created by 최영건 on 5/20/25.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }


}

extension Entity : Identifiable {

}
