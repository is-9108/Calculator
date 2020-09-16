//
//  Task.swift
//  calculator
//
//  Created by Shota Ishii on 2020/04/12.
//  Copyright © 2020 is. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var id = 0
    @objc dynamic var number = ""
    @objc dynamic var memo = ""
    override static func primaryKey() -> String{
        return "id"
    }
}
