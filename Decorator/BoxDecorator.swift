//
//  BoxDecorator.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/20.
//

import Foundation

internal struct BoxDecorator: Decorator {

    internal var item: Item

    internal var lineCount: Int {
        self.item.lineCount + 2
    }

    internal var maxLength: Int {
        self.item.maxLength + 2
    }

    internal init(item: Item) {
        self.item = item
    }

    internal func length(of index: Int) -> Int? {
        guard let length = self.item.length(of: index) else {
            return nil
        }

        return length + 2
    }

    internal func string(of index: Int) -> String? {
        let maxWidth = self.maxLength

        let side: String
        let content: String?

        if index == 0 || index == self.lineCount - 1 {
            side = "+"
            content = [Int](0..<maxWidth-2)
                .map { _ in String.init(stringLiteral: "-") }
                .joined(separator: "")
        } else {
            side = "|"
            content = self.item.string(of: index - 1)
        }

        guard let content = content else {
            return nil
        }

        return [side, content, side].joined(separator: "")
    }

}
