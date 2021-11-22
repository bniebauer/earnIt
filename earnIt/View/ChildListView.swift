//
//  ChildListView.swift
//  earnIt
//
//  Created by Brenton Niebauer on 11/21/21.
//

import SwiftUI

struct ChildListView: View {
    var children: [Child] = Child.initialChildren
    var body: some View {
        VStack {
            ForEach(children) { child in
                NavigationLink(destination: {
                  BehaviorView(model: BehaviorViewModel(child: child))
                        .onDisappear {
                            print("behavior disapeared.")
                        }
                }) {
                    ChildListItem(child: child)
                }
            }
        }
    }
}

struct ChildListItem: View {
    let child: Child
    var body: some View {
        ZStack {
            Circle()
            Text(child.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .foregroundColor(.green)
    }
}

struct ChildListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChildListView()
        }
    }
}
