//
//  Node.swift
//  DataStructures
//
//  Created by Ivan Denezhkin on 09.08.2018.
//  Copyright © 2018 Ivan Denezhkin. All rights reserved.
//

import Foundation

class Node<T> {
    var value: T
    var nextNode: Node?
    weak var previousNode: Node?
    
    init(with value: T) {
        self.value = value
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        return "\(value)"
    }
}
