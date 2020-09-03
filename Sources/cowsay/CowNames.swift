//
//  CowNames.swift
//  
//
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import Foundation

typealias CowName = String

enum CowNames: CowName {
    case example

    static let all: [Cow] = [
        Example(name: CowNames.example.rawValue)
    ]
}

extension Cowsay {

    internal func getAllCows() -> [Cow] {
        CowNames.all
    }

    internal func getCow(named: String) -> String? {
        getAllCows().first { $0.name == named }?.drawing
    }
}

protocol Cow {

    var name: CowName { get }
    var drawing: String { get }
}
