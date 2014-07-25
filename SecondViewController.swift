//
//  SecondViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    var friendName : String = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()

        label.text = "Add a verb to tell us what \(friendName) will do"
        label.sizeToFit()

        textField.placeholder = "Enter verb here"

    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let thirdVC = segue.destinationViewController as ThirdViewController
        thirdVC.nameString = friendName
        thirdVC.verbString = textField.text
        
    }


}
