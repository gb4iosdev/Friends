//
//  PersonDetails.swift
//  Friends
//
//  Created by Gavin Butler on 17-08-2020.
//  Copyright © 2020 Gavin Butler. All rights reserved.
//

import SwiftUI

struct PersonDetails: View {
    let person: Person
    
    var body: some View {
        Group {
            Text(person.name)
            Text("Status: \(person.isActive ? "Active" : "Inactive")")
            Text("Age: \(person.age)")
            Text("Company: \(person.company)")
            Text("Email: \(person.email)")
            Text("Address: \(person.address)")
            Text("Details: \(person.about)")
        }
    }
}

struct PersonDetails_Previews: PreviewProvider {
    static var previews: some View {
        return PersonDetails(person: Person(id: "1", name: "blah", isActive: true, age: 12, company: "Blah Inc", email: "gb@blah.com", address: "21 Blah Street, Blahville, ON, CA", about: "About time", friends: [Friend(id: "1", name: "Fred"), Friend(id: "2", name: "Joe")]))
    }
}
