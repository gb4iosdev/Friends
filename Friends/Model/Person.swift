//
//  Person.swift
//  Friends
//
//  Created by Gavin Butler on 12-08-2020.
//  Copyright © 2020 Gavin Butler. All rights reserved.
//

import Foundation

struct Person: Identifiable, Codable {
    var id: String
    var name: String
    var isActive: Bool
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    
    var friends: [Friend]
}
