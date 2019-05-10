//
//  Books+CoreDataProperties.swift
//  core
//
//  Created by macmex on 5/9/19.
//  Copyright © 2019 Yogesh Patel. All rights reserved.
//
//

import Foundation
import CoreData


extension Books {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Books> {
        return NSFetchRequest<Books>(entityName: "Books")
    }

    @NSManaged public var autor: String?
    @NSManaged public var editorial: String?
    @NSManaged public var paginas: String?
    @NSManaged public var titulo: String?

}
