//
//  LinkedList.swift
//  DataStructures
//
//  Created by Ivan Denezhkin on 09.08.2018.
//  Copyright © 2018 Ivan Denezhkin. All rights reserved.
//

import Foundation

class LinkedList<T> {
    private var head:Node<T>?
    private var tail:Node<T>?
    
    var isEmpty:Bool {
        return head == nil
    }
    
    var first: Node<T>? {
        return head
    }
    
    var last: Node<T>? {
        return tail
    }
    
    func append(newValue: T) {
        let newNode = Node(with: newValue)
        if let tailNode = tail {
            newNode.previousNode = tail
            tailNode.nextNode = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    func nodeAt(index: UInt) -> Node<T>? {
        var node = head
        var i = index
        
        while node != nil {
            if i == 0 { return node }
            i -= 1
            node = node?.nextNode
        }
        
        return nil
    }
    
    func removeAll() {
        head = nil
        tail = nil
    }
    
    func remove(node: Node<T>) -> T {
        let next = node.nextNode
        let previous = node.previousNode
        
        if let prev = previous {
            prev.nextNode = next
        } else {
            head = next
        }
        
        next?.previousNode = previous
        
        if next == nil {
            tail = previous
        }
        
        node.previousNode = nil
        node.nextNode = nil
        
        return node.value
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.nextNode
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}
