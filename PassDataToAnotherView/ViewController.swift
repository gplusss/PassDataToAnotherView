//
//  ViewController.swift
//  PassDataToAnotherView
//
//  Created by Vladimir Saprykin on 01.07.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    @IBAction func doneAction(sender: AnyObject) {
    }
    
    
    func doneAction() {
        view.endEditing(true)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First View"
        doneButton.title = "Done"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let secondController = segue.destinationViewController as! SecondViewController
            secondController.toPass = textField.text
            
        }
    }

}

