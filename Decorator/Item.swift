//
//  Item.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal protocol Item {

    var lineCount: Int { get }
    var maxLength: Int { get }

    func length(of index: Int) -> Int?
    func string(of index: Int) -> String?

}

extension Item {

    internal func printContent() {
        (0..<self.lineCount)
            .compactMap { self.string(of: $0) }
            .forEach { print($0) }
    }

}
