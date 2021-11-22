//
//  BehaviorModel.swift
//  earnIt
//
//  Created by Brenton Niebauer on 11/21/21.
//

import Foundation

struct Behavior: Identifiable {
    var name: String
    var points: Int
    var isGood: Bool
    var id: Int
}

extension Behavior {
    static let initialBehaviors = [
        Behavior(name: "Clean litter box", points: 5, isGood: true, id: 1),
        Behavior(name: "Empty & Load dishwasher", points: 5, isGood: true, id: 2),
        Behavior(name: "Put away toys", points: 5, isGood: true, id: 3),
        Behavior(name: "Hit sibling", points: -5, isGood: false, id: 4),
        Behavior(name: "Used bad language", points: -5, isGood: false, id: 5),
        Behavior(name: "Back talked parent", points: -5, isGood: false, id: 6)
    ]
}

