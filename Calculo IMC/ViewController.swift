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
    
    @IBOutlet weak var ResultContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!) {
           let imc = weight / pow(height, 2)
            showResults(imc: imc)
        }
    }

    private func showResults(imc : Double){
        var result = ""
        var image = ""

        switch imc {
            case 0..<16:
                result = "Magreza"
                image  = "abaixo"
            case 0..<16:
                result = "Abaixo do Peso"
                image  = "abaixo"
            case 0..<16:
                result = "Peso Ideal"
                image  = "ideal"
            case 0..<16:
                result = "Sobrepeso"
                image  = "sobre"
            default:
                result = "Obesidade"
                image  = "obesidade"
        }
        
        tfResult.text = result
        ivResult.image = UIImage(named: image)
        ResultContainer.isHidden = false
    }
}
