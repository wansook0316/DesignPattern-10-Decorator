//
//  SideDecorator.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal struct SideDecorator: Decorator {

    internal var item: Item

    internal var lineCount: Int {
        self.item.lineCount
    }

    internal var maxLength: Int {
        self.item.maxLength + 2
    }

    internal init(item: Item, side: String) {
        self.item = item
        self.side = side
    }

    internal func length(of index: Int) -> Int? {
        guard let length = self.item.length(of: index) else {
            return nil
        }

        return length + 2
    }

    internal func string(of index: Int) -> String? {
        guard let string = self.item.string(of: index) else {
            return nil
        }

        return [side, string, side].joined(separator: "")
    }

    private let side: String

}
