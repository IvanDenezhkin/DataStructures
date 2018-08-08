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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

