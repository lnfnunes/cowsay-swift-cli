//
//  main.swift
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import ArgumentParser
import Foundation

struct Cli: ParsableCommand {

    static let configuration = CommandConfiguration(
        abstract: "Cowsay muuhhhh",
        version: "0.0.2"
    )

    // MARK: - Arguments

    @Argument(help: "The cow should say something")
    var message: [String] = ["muuhhhh"]

    // MARK: - Options

    @Option(name: .shortAndLong, help: "Change cow's eyes")
    var eyes: String = "oo"

    @Option(name: .shortAndLong, help: "Change cow's tongue")
    var tongue: String = "  "

    @Option(name: .long, help: "Select, by name, one of cows included in the package")
    var name: String = Example(name: CowNames.example.rawValue).name

    // MARK: - Init

    mutating func run() throws {
        let cow = try Cowsay.create(named: name, withEyes: eyes, andTongue: tongue)
        print(cow.say(it: message.joined(separator: " ")))
    }
}

Cli.main()
