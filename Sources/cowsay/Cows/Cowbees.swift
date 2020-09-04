//
//  Cowbees.swift
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//  Ref: http://www.asciiworld.com/-Bees-.html
//

import Foundation

struct Cowbees: Cow {

    let name: String

    var eyes: String = ""
    var tongue: String = ""
    let image = """
         $paddingTop
        < $thoughts >
         $paddingBottom
          \\
           \\  \\ _ /
              / $eyes \\  _                        z  z
              \\~~~ /// \\                     z        z
               /--\\//   ))         z        z
          ()==/()==\\__./  B z z z   z    z               z
          ()=(  ()= )                  z z
              \\____/                                        z z z
               ||||
              (/  \\)

        """
}
