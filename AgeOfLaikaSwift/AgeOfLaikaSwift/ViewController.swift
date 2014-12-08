//
//  ViewController.swift
//  AgeOfLaikaSwift
//
//  Created by Dinf AEB on 12/8/14.
//  Copyright (c) 2014 Lucas Rosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fieldIdade: UITextField!
    @IBOutlet weak var labelIdade: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertePressionado(sender: AnyObject) {
        let constante = 7
        let idadeRealInt = fieldIdade.text.toInt()!
        let idadeHumana = idadeRealInt * constante
        labelIdade.text = "\(idadeHumana)"
        
    }

}

