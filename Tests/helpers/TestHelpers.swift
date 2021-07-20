//
//  File.swift
//  
//
//  Created by Leandro Nunes Fantinatto on 20/07/21.
//

import XCTest
import class Foundation.Bundle

extension XCTest {

    func runCommand(with arguments: [String]? = []) throws -> String {
        let fooBinary = productsDirectory.appendingPathComponent("cowsay")

        let process = Process()
        process.executableURL = fooBinary
        process.arguments = arguments

        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let result = try XCTUnwrap(String(data: data, encoding: .utf8))
        return result
    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
        #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
        #else
        return Bundle.main.bundleURL
        #endif
    }
}
