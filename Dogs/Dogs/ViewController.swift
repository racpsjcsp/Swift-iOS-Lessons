//
//  ViewController.swift
//  Dogs
//
//  Created by Rafael Plinio on 02/11/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, DogManagerDelegate {

    
    @IBOutlet weak var pickerButton: UIPickerView!
    
    
    @IBOutlet weak var dogImageView: UIImageView!
    
    
    
  
    
    var dogManager = DogsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dogManager.delegate = self
        pickerButton.dataSource = self
        pickerButton.delegate = self
        
    }

    func didUpdateDogBreed(dogBreed: String) {
        DispatchQueue.main.async {
            dogImageView.image = UIImage(named: dogManager.)
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return dogManager.dogArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dogManager.dogArray.count        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dogManager.dogArray[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedBreed = dogManager.dogArray[row]
        dogManager.getDogBreed(for: selectedBreed)
    }
    
    
    func loadPickerView() {
        
    }
    
    
    

}

