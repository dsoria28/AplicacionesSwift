//
//  Book+CoreDataProperties.swift
//  core
//
//  Created by macmex on 5/9/19.
//  Copyright © 2019 Yogesh Patel. All rights reserved.
//
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var autor: String?
    @NSManaged public var titulo: String?
    @NSManaged public var paginas: String?
    @NSManaged public var editorial: String?

}
