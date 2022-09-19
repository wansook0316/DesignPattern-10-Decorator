//
//  Decorator.swift
//  Decorator
//
//  Created by Choiwansik on 2022/09/19.
//

import Foundation

internal protocol Decorator: Item {

    // 상위 타입을 받아,
    // 1. 원래 아이템에 대한 장식
    // 2. 장식자에 대한 장식
    // 모두를 가능케 한다.
    var item: Item { get }

}
