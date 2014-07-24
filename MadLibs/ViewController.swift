//
//  ViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

extension UIColor
    {
    class func nameColor() -> UIColor
    {
        return UIColor(red: 118.0/255.0, green: 232.0/255.0, blue: 8.0/255.0, alpha: 1.0)
    }
    class func verbColor() -> UIColor
    {
        return UIColor(red: 232.0/255.0, green: 138.0/255.0, blue: 12.0/255.0, alpha: 1.0)
    }
    class func nounColor() -> UIColor
    {
        return UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    }
    class func viewBackgroundColor() ->UIColor
    {
        return UIColor(red: 13.0/255.0, green: 153.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    }
}
class ViewController: UIViewController, UITextFieldDelegate
{
                            
    @IBOutlet var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        textField.placeholder = "Enter name here"
        textField.delegate = self
        addButton.enabled = false

        textField.textColor = UIColor.nameColor()
        view.backgroundColor = UIColor.viewBackgroundColor()
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        let secondVC = segue.destinationViewController as SecondViewController
        secondVC.friendName = textField.text
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

