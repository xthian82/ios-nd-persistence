//
//  Notebook+Extensions.swift
//  Mooskine
//
//  Created by Cristhian Recalde on 2/8/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import CoreData

extension Notebook {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
