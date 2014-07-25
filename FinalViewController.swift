//
//  FinalViewController.swift
//  MadLibs
//
//  Created by Richard Fellure on 7/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController
{

    var nameString : String = ""
    var verbString : String = ""
    var nounString : String = ""

    @IBOutlet var textView: UITextView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        textView.editable = false

        textView.backgroundColor = UIColor.greenColor()

        let string = "One fine afternoon \(nameString) decided to go for a \(verbString), while \(nameString) was \(verbString)ing, \(nameString) decided \(nameString) would like a \(nounString). So \(nameString) decided to \(verbString) over to the \(nounString) store. After arriving \(nameString) found that they were out of \(nounString) at the \(nounString) store. \(nameString) was not happy so \(nameString) \(verbString)ed out of there as fast as \(nameString) could \(verbString)."

        var attributedString = NSMutableAttributedString(string:string)

        var nameRegex = NSRegularExpression(pattern: nameString, options: nil, error:nil)
        var nameMatches = nameRegex.matchesInString(string, options: nil, range: NSMakeRange(0, attributedString.length))
        for nameMatch in nameMatches
        {
            let wordRange = nameMatch.rangeAtIndex(0)
            attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: wordRange)
        }

        var verbRegex = NSRegularExpression(pattern: verbString, options: nil, error: nil)
        var verbMatches = verbRegex.matchesInString(string, options: nil, range: NSMakeRange(0, attributedString.length))
        for verbMatch in verbMatches
        {
            let wordRange = verbMatch.rangeAtIndex(0)
            attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.orangeColor(), range: wordRange)
        }

        var nounRegex = NSRegularExpression(pattern: nounString, options: nil, error: nil)
        var nounMatches = nounRegex.matchesInString(string, options: nil, range: NSMakeRange(0, attributedString.length))
        for nounMatch in nounMatches
        {
            let wordRange = nounMatch.rangeAtIndex(0)
            attributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.magentaColor(), range: wordRange)
        }

        let font = UIFont(name:"AmericanTypewriter", size: 30)
        textView.font = font
        
        textView.attributedText = attributedString


        view.backgroundColor = UIColor.greenColor()
    }
    

}
