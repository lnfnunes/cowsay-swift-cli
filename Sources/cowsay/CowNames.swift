//
//  CowNames.swift
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import Foundation

typealias CowName = String

enum CowNames: CowName {
    case example
    case cowffee, cowbees

    static let all: [Cow] = [
        Example(name: CowNames.example.rawValue),
        Cowffee(name: CowNames.cowffee.rawValue),
        Cowbees(name: CowNames.cowbees.rawValue),
    ]
}
