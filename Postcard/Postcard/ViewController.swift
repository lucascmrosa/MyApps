//
//  ViewController.swift
//  Postcard
//
//  Created by Dinf AEB on 20/11/14.
//  Copyright (c) 2014 Lucas Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
    }

}

