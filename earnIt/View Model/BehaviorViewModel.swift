//
//  BehaviorViewModel.swift
//  earnIt
//
//  Created by Brenton Niebauer on 11/21/21.
//

import SwiftUI

class BehaviorViewModel: ObservableObject {
    let child: Child
    let behaviors: [Behavior]
    
    @Published private var completedBehaviors: [Int] = []
    var totalPoints: Int {
        completedBehaviors.reduce(0, {$0 + $1})
    }
    var hasCompletedBehaviors: Bool {
        completedBehaviors.count > 0
    }
    
    init(child: Child = Child.initialChildren[0]){
        self.child = child
        behaviors = child.behaviors
    }
    
    func choose(_ behavior: Behavior) {
        completedBehaviors.append(behavior.points)
    }
    
    func undoChoose() {
        if completedBehaviors.count > 0 {
            completedBehaviors.removeLast()
        }
    }
}
