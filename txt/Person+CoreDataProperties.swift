//
//  Person+CoreDataProperties.swift
//  txt
//
//  Created by Sriram Prasad on 12/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var city: String?
    @NSManaged public var name: String?

}
