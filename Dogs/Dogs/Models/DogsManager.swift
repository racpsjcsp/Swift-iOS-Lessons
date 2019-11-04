//
//  NetworkManager.swift
//  Dogs
//
//  Created by Rafael Plinio on 02/11/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

protocol DogManagerDelegate {
    func didUpdateDogBreed(dogBreed: String)
    func didFailWithError(error: Error)
}

struct DogsManager {
    
    var delegate: DogManagerDelegate?
    
    let prefixURL = "https://dog.ceo/api/breed/"
    let suffixURL = "/images/random"
    let dogArray = [
        "affenpinscher","african","airedale","akita","appenzeller","basenji","beagle","bluetick","borzoi","bouvier","boxer","brabancon","briard","buhund","bulldog",
    "bullterrier","cairn","cattledog","chihuahua","chow","clumber","cockapoo","collie","coonhound","corgi","cotondetulear","dachshund","dalmatian","dane","deerhound","dhole","dingo","doberman","elkhound","entlebucher","eskimo","frise","germanshepherd","greyhound","groenendael","hound","husky","keeshond","kelpie","komondor","kuvasz","labrador","leonberg","lhasa","malamute","malinois","maltese","mastiff","mexicanhairless","mix","mountain","newfoundland","otterhound","papillon","pekinese","pembroke","pinscher","pitbull","pointer","pomeranian","poodle","pug","puggle","redbone","retriever","ridgeback","rottweiler","saluki","samoyed","schipperke","schnauzer","setter","sheepdog","shiba","shihtzu","spaniel","springer","stbernard","terrier","vizsla","waterdog","weimaraner","whippet", "wolfhound"
    ]
     

    func getDogBreed(for breed: String) {
        let urlString = prefixURL + breed + suffixURL
        print(urlString)

        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if data != nil {
                    self.delegate?.didUpdateDogBreed(dogBreed: breed)
                }
            }
            task.resume()
        }
    }
    
    
    
        
    
//    init() {
//        let fileURL = Bundle.main.url(forResource: "dogs", withExtension: "json")!
//        let jsonData = try! Data(contentsOf: fileURL)
//        let jsonDecoder = JSONDecoder()
//        dogs = try! jsonDecoder.decode([DogData].self, from: jsonData)
//    }
    
//    func getRandomDogBreed() -> String {
//        let index = Int(arc4random_uniform(UInt32(dogs.count)))
//        return dogs[index]
//
//    }
}
