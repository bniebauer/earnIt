//
//  ChildModel.swift
//  earnIt
//
//  Created by Brenton Niebauer on 11/21/21.
//

import Foundation

struct Child: Identifiable {
    var name: String
    var behaviors: [Behavior] = Behavior.initialBehaviors
    var id: Int
    private var history: [Date:[Behavior]] = [:]
}

extension Child {
    static let initialChildren = [
        Child(name: "Breanna", id: 1),
        Child(name: "Kaleb", id: 2),
        Child(name: "Lilly", id: 3)
    ]
}
