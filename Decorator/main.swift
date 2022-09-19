//
//  main.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal func main() {
    let strings = Strings()

    strings.add(item: "안녕~!")
    strings.add(item: "나는 완숙쿤이야")
    strings.add(item: "iOS 개발을 하고 잇성")
    strings.add(item: "디자인 패턴은 이제 많이 퇴색되었대!")

    let decorator = SideDecorator(item: strings, side: "\"")
    decorator.printContent()
}


main()
