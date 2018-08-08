//
//  Stack.swift
//  DataStructures
//
//  Created by Ivan Denezhkin on 08.08.2018.
//  Copyright © 2018 Ivan Denezhkin. All rights reserved.
//

import Foundation

struct Stack<T> {
    private var array:[T] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    func peek() -> T? {
        return array.last
    }
}
