//
//  ThirdViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var nameString = String()
    var verbString = String()

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Add a noun that \(nameString) likes"
        textField.placeholder = "Enter noun here"

    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let finalVC = segue.destinationViewController as FinalViewController
        finalVC.nameString = nameString
        finalVC.verbString = verbString
        finalVC.nounString = textField.text
    }


}
