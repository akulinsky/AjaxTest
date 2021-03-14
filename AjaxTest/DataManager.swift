//
//  DataManager.swift
//  AjaxTest
//
//  Created by Andrey Kulinskiy on 14.03.2021.
//

import Foundation

import UIKit
import CoreData
import MagicalRecord

class DataManager {
    // MARK: - Properties
    
    // MARK: - Methods
    class func statistics() {
//        print("EnableSensorsDB: \(EnableSensorsDB.mr_countOfEntities())")

    }
    
    // MARK: - Class Methods
    class func setup() {
        MagicalRecord.setupAutoMigratingCoreDataStack()
    }
    
    class func removeAllData() {
        MagicalRecord.save(blockAndWait: { (context) in
//            EnableSensorsDB.mr_truncateAll(in: context)
        })
    }
    
    class func isEmpty() -> Bool {
        
//        let items = DataManager.allTags()
//        if items.count > 0 {
//            return false
//        }
        
        return true
    }
    
    class func objectWithID(_ id: NSManagedObjectID?) -> NSManagedObject? {
        guard let id = id else { return nil }
        return try? NSManagedObjectContext.mr_default().existingObject(with: id)
    }
    
    class func updateEntity<T: NSManagedObject>(entity: T, block: @escaping ( (_ entry: T?)->() )) {
        MagicalRecord.save(blockAndWait: { (context) in
            let item = entity.mr_(in: context)
            block(item)
        })
    }
    
    class func deleteEntity<T: NSManagedObject>(entity: T) {
        MagicalRecord.save(blockAndWait: { (context) in
            entity.mr_deleteEntity(in: context)
        })
    }
}
