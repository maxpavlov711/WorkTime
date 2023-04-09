//
//  BaseViewController.swift
//  UIComponents
//
//  Created by Max Pavlov on 9.04.23.
//

import UIKit

open class BaseViewController: UIViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

extension BaseViewController {
    @objc open func setup() { }
}


