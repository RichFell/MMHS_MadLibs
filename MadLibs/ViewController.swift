//
//  ViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var textField: UITextField

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.placeholder = "Enter name here"
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let secondVC = segue.destinationViewController as SecondViewController
        secondVC.friendName = textField.text
    }

}

