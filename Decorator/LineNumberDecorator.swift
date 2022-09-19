//
//  LineNumberDecorator.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/20.
//

import Foundation

internal struct LineNumberDecorator: Decorator {

    internal var item: Item

    internal var lineCount: Int {
        self.item.lineCount
    }

    internal var maxLength: Int {
        self.item.maxLength + 4
    }

    internal init(item: Item) {
        self.item = item
    }

    internal func length(of index: Int) -> Int? {
        guard let length = self.item.length(of: index) else {
            return nil
        }

        return length + 4
    }

    internal func string(of index: Int) -> String? {
        guard let string = self.item.string(of: index) else {
            return nil
        }

        return String(format: "%02d: %@", index, string)
    }

}
