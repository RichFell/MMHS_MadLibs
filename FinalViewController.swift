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

        textView.text = "One fine afternoon \(nameString) decided to go for a \(verbString), while \(nameString) was \(verbString)ing, they decided they would like a \(nounString). So \(nameString) decided to \(verbString) over to the \(nounString) store. After arriving \(nameString) found that they were out of \(nounString) at the \(nounString) store. \(nameString) was not happy so \(nameString) \(verbString)ed out of there as fast as \(nameString) could \(verbString). "
    }

}
