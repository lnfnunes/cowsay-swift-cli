//
//  CowNames.swift
//
//
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import Foundation

struct Example: Cow {

    let name: String

    var eyes: String = ""
    var tongue: String = ""
    let image = """
         $paddingTop
        < $thoughts >
         $paddingBottom
                \\   ^__^
                 \\  ($eyes\\________
                    (__)\\       )\\/\\
                     $tongue ||----w |
                        ||     ||

        """
}
