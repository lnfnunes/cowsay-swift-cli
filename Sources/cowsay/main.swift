//
//  CowNames.swift
//
//
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import ArgumentParser
import Foundation

struct Cowsay: ParsableCommand {

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

  // MARK: - Properties

  private var thoughts: String {
    message.joined(separator: " ")
  }

  // MARK: - Init

  mutating func run() throws {
    let saying = message.joined(separator: " ")
    let cow = try createCow(named: name, saying: saying)
    print(cow)
  }

  private func createCow(named: String, saying: String) throws -> String {
    let len = saying.count + 2
    let paddingTop = String(repeating: "_", count: len)
    let paddingBottom = String(repeating: "-", count: len)
    
    guard let cow = getCow(named: named) else {
      throw ValidationError("[404] There\'s no cow named '\(name)'\n\t\t\t\t  ^")
    }
    
    return cow
      .replacingOccurrences(of: "$paddingTop", with: paddingTop)
      .replacingOccurrences(of: "$paddingBottom", with: paddingBottom)
      .replacingOccurrences(of: "$thoughts", with: thoughts)
      .replacingOccurrences(of: "$eyes", with: eyes)
      .replacingOccurrences(of: "$tongue", with: tongue)
  }
}

Cowsay.main()
