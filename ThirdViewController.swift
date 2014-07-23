//
//  ThirdViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {

    var nameString = String()
    var verbString = String()

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Add a noun that \(nameString) likes"
        textField.placeholder = "Enter noun here"
        addButton.enabled = false
        textField.delegate = self

        view.backgroundColor = UIColor.greenColor()
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let finalVC = segue.destinationViewController as FinalViewController
        finalVC.nameString = nameString
        finalVC.verbString = verbString
        finalVC.nounString = textField.text
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
