//
//  TestViewController.swift
//  DataStructures
//
//  Created by Ivan Denezhkin on 08.08.2018.
//  Copyright © 2018 Ivan Denezhkin. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let operationOne = Operation()
        let operationTwo = Operation()
        var stack = Stack<Operation>()
        stack.push(element: operationOne)
        stack.push(element: operationTwo)
        print(stack.count)
        print("_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _")
        
        let firstNode = "Azaza"
        let secondNode = "Tormoza"
        let thirdNode = "Oops"
        
        let linkedList = LinkedList<String>()
        linkedList.append(newValue: firstNode)
        linkedList.append(newValue: secondNode)
        linkedList.append(newValue: thirdNode)
        print(linkedList)
        if let node = linkedList.nodeAt(index: 1) {
            _ = linkedList.remove(node: node)
            print(linkedList)
        }
        
        linkedList.removeAll()
        print(linkedList)
        print("_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _")
    }
}

