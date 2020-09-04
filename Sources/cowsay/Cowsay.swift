//
//  CowNames.swift
//
//
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import ArgumentParser
import Foundation

final class Cowsay {

    static func createCow(
        named: String,
        withEyes eyes: String,
        andTongue tongue: String
    ) throws -> Cow {

        guard var cow = getCow(named: named) else {
            throw ValidationError("[404] There\'s no cow named '\(named)'\n\t\t\t\t  ^")
        }

        cow.eyes = eyes
        cow.tongue = tongue

        return cow
    }

    static private func getCow(named: String) -> Cow? {
        CowNames.all.first { $0.name == named }
    }
}
