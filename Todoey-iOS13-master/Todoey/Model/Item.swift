//
//  Item.swift
//  Todoey
//
//  Created by Rafael Plinio on 04/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

class Item: Encodable {
    var title: String = ""
    var done: Bool = false
}
