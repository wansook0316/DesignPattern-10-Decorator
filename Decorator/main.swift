//
//  main.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal func main() {
    let strings = Strings()

    strings.add(item: "HI H.I.~!")
    strings.add(item: "I'm Wansook kun~!")
    strings.add(item: "I'm iOS Developer!")
    strings.add(item: "Design Pattern is not so good as much as before!")

    var decorator: Item = SideDecorator(item: strings, side: "\"")
    decorator = LineNumberDecorator(item: decorator)
    decorator = BoxDecorator(item: decorator)
    decorator.printContent()
}


main()
