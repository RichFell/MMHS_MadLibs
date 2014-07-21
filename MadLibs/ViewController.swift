//
//  ViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.placeholder = "Enter name here"
        textField.delegate = self
        addButton.enabled = false
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let secondVC = segue.destinationViewController as SecondViewController
        secondVC.friendName = textField.text
    }

   func textFieldShouldReturn(textField: UITextField!) -> Bool
   {
    if textField.text != ""
    {
         addButton.enabled = true
    }
    
    return true
    }
}

