//
//  PostData.swift
//  Hacker News
//
//  Created by Rafael Plinio on 30/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {    //Identifiable id
        return objectID
    }
    let objectID: String    //json id
    let title: String
    let points: Int
    let url: String
}
