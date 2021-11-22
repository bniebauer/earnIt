//
//  BehaviorView.swift
//  earnIt
//
//  Created by Brenton Niebauer on 11/21/21.
//

import SwiftUI

struct BehaviorView: View {
    @ObservedObject var model: BehaviorViewModel
    
    var body: some View {
        VStack {
            title
            ScrollView {
                ForEach(model.behaviors) { behavior in
                    BehaviorButtonView(behavior: behavior)
                        .onTapGesture {
                            model.choose(behavior)
                        }
                }
            }
        }
    }
    
    var title: some View {
        VStack {
            Text(model.child.name)
                .font(.title)
                .fontWeight(.heavy)
            HStack {
                Text("Daily Points Earned:")
                Text("\(model.totalPoints)")
                if model.hasCompletedBehaviors {
                    Button(action: {
                        model.undoChoose()
                    }, label: {
                        Text("Undo")
                    })
                }
            }
            .font(.headline)
        }
    }
}

struct BehaviorButtonView: View {
    var behavior: Behavior
    var color: Color {
        behavior.isGood ? Color.blue : Color.red
    }
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(color)
                .padding([.leading, .trailing])
            HStack {
                Text(behavior.name)
                Spacer()
                Text("\(behavior.isGood ? "+" : "")\(behavior.points)")
            }
            .foregroundColor(.white)
            .font(.title2)
            .padding([.top, .bottom])
            .padding([.leading, .trailing], 50)
        }
    }
}
struct BehaviorView_Previews: PreviewProvider {
    static var previews: some View {
        let breanna = BehaviorViewModel(child: Child.initialChildren[0])
        NavigationView {
            BehaviorView(model: breanna)
        }
    }
}
