//
//  Student+CoreDataProperties.swift
//  core
//
//  Created by Yogesh Patel on 26/04/18.
//  Copyright © 2018 Yogesh Patel. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var city: String?

}
