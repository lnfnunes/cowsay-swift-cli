//
//  Headin.swift
//  Created by Tim Brooks on 10/20/20.
//

import Foundation

struct Headin: Cow {

    let name: String

    var eyes: String = ""
    var tongue: String = ""
    let image = """
         $paddingTop
        < $thoughts >
         $paddingBottom
         ^__^         /
         ($eyes)\\_______/  _________
         (__)\\       )=(  ____|_ \\_____
          $tongue||----w |  \\ \\     \\_____ |
            ||     ||   ||           ||
        """
}
