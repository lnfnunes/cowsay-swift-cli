//
//  CowNames.swift
//  
//
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import Foundation

protocol Cow {

    var name: CowName { get }

    var image: String { get }
    var eyes: String { get set }
    var tongue: String { get set }
}

extension Cow {

    func say(it thoughts: String) -> String {
        let len = thoughts.count + 2
        let paddingTop = String(repeating: "_", count: len)
        let paddingBottom = String(repeating: "-", count: len)

        return image.replacingOccurrences(of: "$paddingTop", with: paddingTop)
            .replacingOccurrences(of: "$paddingBottom", with: paddingBottom)
            .replacingOccurrences(of: "$thoughts", with: thoughts)
            .replacingOccurrences(of: "$eyes", with: eyes)
            .replacingOccurrences(of: "$tongue", with: tongue)
    }
}
