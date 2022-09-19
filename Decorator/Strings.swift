//
//  Strings.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal class Strings {

    internal var lineCount: Int {
        self.strings.count
    }

    internal var maxLength: Int {
        self.strings
            .map { $0.count }
            .max() ?? .zero
    }

    internal func add(item: String) {
        self.strings.append(item)
    }

    private var strings = [String]()

}

extension Strings: Item {

    internal func length(of index: Int) -> Int? {
        guard index < self.lineCount else {
            return nil
        }

        return self.strings[index].count
    }

    internal func string(of index: Int) -> String? {
        guard index < self.lineCount else {
            return nil
        }

        return self.strings[index]
    }

}
