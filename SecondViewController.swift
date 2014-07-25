//
//  SecondViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate
{

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    var friendName : String = ""

    override func viewDidLoad()
    {
        super.viewDidLoad()

        label.text = "Add a verb to tell us what \(friendName) will do"
        label.sizeToFit()

        textField.placeholder = "Enter verb here"
        addButton.enabled = false
        textField.delegate = self

        view.backgroundColor = UIColor.greenColor()

    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let thirdVC = segue.destinationViewController as ThirdViewController
        thirdVC.nameString = friendName
        thirdVC.verbString = textField.text
    }


    func textField(textField: UITextField!, shouldChangeCharactersInRange range: NSRange, replacementString string: String!) -> Bool
    {
        if textField.text != ""
        {
            addButton.enabled = true
        }
        return true
    }

}
