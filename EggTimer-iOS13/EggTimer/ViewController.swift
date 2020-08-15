//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    var alarm: AVAudioPlayer!
    
    @IBOutlet weak var doneLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
        
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate() //resets timer
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]! //gets int value from the dictionary
        
        progressBar.isHidden = false
        progressBar.progress = 0.0
        secondsPassed = 0
        doneLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        } else {
            timer.invalidate()
            doneLabel.text = "DONE!"
            playAlarm()
            progressBar.isHidden = true
        }
    }
    
    func playAlarm() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        alarm = try! AVAudioPlayer(contentsOf: url!)
        alarm.play()
    }
    
}
