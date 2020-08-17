//
//  PersonWithFriendsView.swift
//  Friends
//
//  Created by Gavin Butler on 16-08-2020.
//  Copyright © 2020 Gavin Butler. All rights reserved.
//

import SwiftUI

struct PersonWithFriendsView: View {
    let person: Person
    let people: People
    
    var body: some View {
        Form {
            PersonDetails(person: person)
            Section(header: Text("Friends").font(.headline)) {
                List(person.friends) { friend in
                    NavigationLink(destination: PersonDetailView(person: self.people.withId(id: friend.id))) {
                        Text(friend.name)
                    }
                }
            }
        }
        .navigationBarTitle("Person", displayMode: .inline)
    }
}

struct PersonWithFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        let peeps = People()
        return PersonWithFriendsView(person: Person(id: "1", name: "blah", isActive: true, age: 12, company: "Blah Inc", email: "gb@blah.com", address: "21 Blah Street, Blahville, ON, CA", about: "About time", friends: [Friend(id: "1", name: "Fred"), Friend(id: "2", name: "Joe")]), people: peeps)
    }
}
