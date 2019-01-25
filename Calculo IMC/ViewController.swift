//
//  ViewController.swift
//  Calculo IMC
//
//  Created by Thiago Antonio Ramalho on 20/01/19.
//  Copyright © 2019 Thiago Antonio Ramalho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var tfResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
    }

}

