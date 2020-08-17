//
//  PersonDetailView.swift
//  Friends
//
//  Created by Gavin Butler on 12-08-2020.
//  Copyright © 2020 Gavin Butler. All rights reserved.
//

import SwiftUI

struct PersonDetailView: View {
    
    let person: Person
    
    var body: some View {
        Form {
            PersonDetails(person: person)
        }
        .navigationBarTitle("Friend", displayMode: .inline)
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        return PersonDetailView(person: Person(id: "1", name: "blah", isActive: true, age: 12, company: "Blah Inc", email: "gb@blah.com", address: "21 Blah Street, Blahville, ON, CA", about: "About time", friends: [Friend(id: "1", name: "Fred"), Friend(id: "2", name: "Joe")]))
    }
}
