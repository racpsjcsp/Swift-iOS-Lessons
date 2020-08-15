//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var counter = 0
    var timer = Timer()
   
    @IBOutlet weak var doneLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
        
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        counter = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        progressBar.progress = 1
        
        }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds")
            counter -= 1
        } else {
            timer.invalidate()
            doneLabel.text = "DONE!"
        }
    }
    
}
