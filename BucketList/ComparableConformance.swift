//
//  ComparableConformance.swift
//  BucketList
//
//  Created by mac on 08/11/2024.
//

import SwiftUI

struct User: Identifiable, Comparable {
    let id = UUID()
    var firstName: String
    var lastName: String
    
    static func <(lhs: User, rhs: User) -> Bool {
       lhs.lastName < rhs.lastName
    }
}

struct ComparableConformance: View {
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister"),
    ].sorted()

    var body: some View {
       List(users) { user in
           Text("\(user.lastName), \(user.firstName)")
       }
   }
}

#Preview {
    ComparableConformance()
}
