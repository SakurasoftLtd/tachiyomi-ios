//
//  Title+CoreDataProperties.swift
//  
//
//  Created by Jacob King on 01/09/2021.
//
//

import Foundation
import CoreData

extension Title {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Title> {
        return NSFetchRequest<Title>(entityName: "Title")
    }

    @NSManaged public var name: String?
    @NSManaged public var artworkUri: URL?
    @NSManaged public var source: Source?
    @NSManaged public var chapters: NSSet?

}

// MARK: Generated accessors for chapters
extension Title {

    @objc(addChaptersObject:)
    @NSManaged public func addToChapters(_ value: Chapter)

    @objc(removeChaptersObject:)
    @NSManaged public func removeFromChapters(_ value: Chapter)

    @objc(addChapters:)
    @NSManaged public func addToChapters(_ values: NSSet)

    @objc(removeChapters:)
    @NSManaged public func removeFromChapters(_ values: NSSet)

}
