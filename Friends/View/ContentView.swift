//
//  ContentView.swift
//  Friends
//
//  Created by Gavin Butler on 12-08-2020.
//  Copyright © 2020 Gavin Butler. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var peeps = People()
    
    var body: some View {
        NavigationView {
            VStack {
                List(peeps.people) { person in
                    NavigationLink(destination: PersonWithFriendsView(person: person, people: self.peeps)) {
                        VStack(alignment: .leading) {
                            Text(person.name)
                                .font(.headline)
                            
                            Text("Age: \(person.age)")
                                    .font(.subheadline)
                            Text(person.email)
                            .font(.footnote)
                        }
                    }
                }
            }
            .onAppear(perform: peeps.load)
            .navigationBarTitle("People", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
