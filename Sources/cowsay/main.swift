//
//  CowNames.swift
//
//
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import ArgumentParser
import Foundation

struct Cli: ParsableCommand {

    static let configuration = CommandConfiguration(abstract: "Cowsay muuhhhh")

    // MARK: - Arguments

    @Argument(help: "The cow should say something")
    var message: [String]

    // MARK: - Options

    @Option(name: .shortAndLong,
    default: "oo",
    help: "Change cow's eyes")
    var eyes: String

    @Option(name: .shortAndLong,
    default: "  ",
    help: "Change cow's tongue")
    var tongue: String

    @Option(name: .long,
    default: Example(name: CowNames.example.rawValue).name,
    help: "Select, by name, one of cows included in the package")
    var name: String

    // MARK: - Init

    mutating func run() throws {
        let cow = try Cowsay.createCow(named: name, withEyes: eyes, andTongue: tongue)
        print(cow.say(it: message.joined(separator: " ")))
    }
}

Cli.main()
