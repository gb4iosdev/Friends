//
//  People.swift
//  Friends
//
//  Created by Gavin Butler on 12-08-2020.
//  Copyright © 2020 Gavin Butler. All rights reserved.
//

import Foundation

class People: ObservableObject, Codable {
    @Published var people: [Person] = []
    
    enum CodingKeys: CodingKey {
        case people
    }
    
    init() {}
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        people = try container.decode([Person].self, forKey: .people)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(people, forKey: .people)
    }
}

extension People {
    
    func load() {
        
        let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let decodedPeeps = try? JSONDecoder().decode([Person].self, from: data) {
                self.people = decodedPeeps
            } else {
                print("Invalid response from server")
            }
        }.resume()
    }
    
    func withId(id: String) -> Person {
        if let person = self.people.first(where: { $0.id == id }) {
            return person
        } else {
            fatalError("Cannot find person with id: \(id)")
        }
    }
}
