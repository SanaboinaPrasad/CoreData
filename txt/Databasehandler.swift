//
//  File.swift
//  txt
//
//  Created by Sriram Prasad on 12/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit
import CoreData
class Databasehandler: NSObject {
    
    static let shared = Databasehandler()
    
    let contextmanager = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext

    func saveData(object:[String:String]){

        let personentity = NSEntityDescription.insertNewObject(forEntityName: "Person", into: contextmanager) as! Person
        personentity.city = object["city"]
        personentity.name = object["name"]
        do {
            
            try contextmanager.save()
            
            print("saved")
        }
        catch {
            print("error while saving data")
        }
    }
    
    func getData() ->[Person] {
        var person = [Person]()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        do {
           person = try contextmanager.fetch(fetchRequest) as![Person]
        }
        catch {
            print("error")
        }
        return person
    }
    
    
}
