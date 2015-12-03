//
//  ViewController.swift
//  TweetLightning
//
//  Created by Nic Wise on 19/11/15.
//  Copyright © 2015 Nic Wise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressed(sender: AnyObject) {
        
        let text = textField.text
        
        textField.text = text?.uppercaseString
    }

}

