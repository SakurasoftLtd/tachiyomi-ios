//
//  Chapter+CoreDataProperties.swift
//  
//
//  Created by Jacob King on 01/09/2021.
//
//

import Foundation
import CoreData

extension Chapter {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chapter> {
        return NSFetchRequest<Chapter>(entityName: "Chapter")
    }

    @NSManaged public var name: String?
    @NSManaged public var pageCount: Int64
    @NSManaged public var releaseDate: Date?
    @NSManaged public var title: Title?

}
