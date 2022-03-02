//
//  AddingConformance.swift
//  BucketList
//
//  Created by Mitch Andrade on 2/26/22.
//

import SwiftUI

struct User: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

struct AddingConformance: View {
    
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kosher"),
        User(firstName: "David", lastName: "Lister")
    ]
    
    var body: some View {
        List(users) { user in
            Text("\(user.firstName) \(user.lastName)")
        }
    }
}

struct AddingConformance_Previews: PreviewProvider {
    static var previews: some View {
        AddingConformance()
    }
}
