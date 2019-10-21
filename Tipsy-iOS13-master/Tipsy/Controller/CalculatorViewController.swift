//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var pctValue = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        let buttonTitle = sender.currentTitle!
        print("ButtonTitle:", buttonTitle)
        let buttonTitleMinusPctSign = String(buttonTitle.dropLast())
        print(buttonTitleMinusPctSign)
        let buttonTitleAsANumber = Double(buttonTitleMinusPctSign)!
        pctValue = buttonTitleAsANumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let value = sender.value
        splitNumberLabel.text = String(format: "%.0f", value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(pctValue)
    }
    
}

