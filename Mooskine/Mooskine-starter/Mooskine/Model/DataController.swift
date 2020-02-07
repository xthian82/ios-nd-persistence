//
//  DataController.swift
//  Mooskine
//
//  Created by Cristhian Recalde on 2/5/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {

    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores {
            storeDescription, error in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
}
