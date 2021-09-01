//
//  Source+CoreDataProperties.swift
//  
//
//  Created by Jacob King on 01/09/2021.
//
//

import Foundation
import CoreData

extension Source {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Source> {
        return NSFetchRequest<Source>(entityName: "Source")
    }

    @NSManaged public var name: String?
    @NSManaged public var artworkUri: URL?
    @NSManaged public var rootDirectoryUri: URL?

}
