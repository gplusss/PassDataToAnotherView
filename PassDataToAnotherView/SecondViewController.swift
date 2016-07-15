//
//  SecondViewController.swift
//  PassDataToAnotherView
//
//  Created by Vladimir Saprykin on 01.07.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    var toPass: String!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = toPass

        title = "Second Controller"
    }
    
    
}
