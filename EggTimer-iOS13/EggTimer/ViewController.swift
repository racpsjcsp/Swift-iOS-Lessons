//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var counter = 0
    @IBAction func hardnessSelected(_ sender: UIButton) {
    
            
        let hardness = sender.currentTitle!
        
//        if (hardness == "Soft") {
//            print(softTime)
//        } else if (hardness == "Medium") {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
        
        
//        switch hardness {
//        case "Soft":
//            print(eggTimes["Soft"]!)
//        case "Medium":
//            print(eggTimes["Medium"]!)
//        case "Hard":
//            print(eggTimes["Hard"]!)
//        default:
//            print("Error")
//        }
        
        
        counter = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds")
            counter -= 1
        }
    }
       
}
