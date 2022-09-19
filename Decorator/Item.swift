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

    func length(of index: Int)
    func string(of index: Int)

}

extension Item {

    internal func printContent() {
        (0..<self.lineCount).forEach { index in
            print(self.string(of: index))
        }
    }

}
