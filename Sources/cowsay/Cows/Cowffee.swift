//
//  Cowffee.swift
//  Created by Leandro Nunes Fantinatto on 03/09/20.
//

import Foundation

struct Cowffee: Cow {

    let name: String

    var eyes: String = ""
    var tongue: String = ""
    let image = """
         $paddingTop
        < $thoughts >
         $paddingBottom
            \\   {
             \\   }   }   {
                {   {  }  }
                 }   } {  {
                { }  { }  }
               ( }{ } { { )
              .-{  }   }-.
            ( ( } { } { } )
            |`-.._____..-'|
            |             ;--.
            |   (__)     (__  \\
            |   ($eyes)      | )  )
            |    \\/       |/  /
            |     $tongue      /  /
            |            (  /
            \\             y'
              `-.._____..-'

        """
}
