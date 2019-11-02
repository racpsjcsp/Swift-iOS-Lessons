//
//  ContentView.swift
//  Doggin
//
//  Created by Rafael Plinio on 01/11/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @State private var breedIndex = 0
    
    var breeds = [
        "affenpinscher", "african", "airedale", "akita", "appenzeller", "basenji", "beagle", "bluetick", "borzoi",
        "bouvier", "boxer", "brabancon", "briard", "buhund", "bulldog", "bullterrier", "cairn", "cattledog",
        "chihuahua", "chow", "clumber", "cockapoo", "collie", "coonhound", "corgi", "cotondetulear", "dachshund",
        "dalmatian", "dane", "deerhound", "dhole", "dingo", "doberman", "elkhound", "entlebucher", "eskimo", "frise",
        "germanshepherd", "greyhound", "groenendael", "hound", "husky", "keeshond", "kelpie", "komondor", "kuvasz",
        "labrador", "leonberg", "lhasa", "malamute", "malinois", "maltese", "mastiff", "mexicanhairless", "mix",
        "mountain", "newfoundland", "otterhound", "papillon", "pekinese", "pembroke", "pinscher", "pointer",
        "pomeranian", "poodle", "pug", "puggle", "pyrenees", "redbone", "retrivier", "ridgeback", "rottweiler",
        "saluki", "samoyed", "schipperke", "schnauzer", "setter", "sheepdog", "shiba", "shihtzu", "spaniel", "springer",
        "stbernard", "terrier", "vizsla", "waterdog", "weimaraner", "whippet", "wolfhound"]
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(.systemTeal)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Picker(selection: $breedIndex, label: Text("Breed:")) {
                        ForEach(0 ..< breeds.count) {
                            Text(self.breeds[$0]).tag($0)
                        }
                    }
                    
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Spacer()

                    Button(action: {
                        
                    }) {
                        
                        Text("Roll")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 3)
                                    .frame(width: 60, height: 60))
                    }
                }
                .padding()
            }
            .navigationBarTitle(Text("Dogs")
            .font(Font.custom("GloriaHallelujah-Regular", size: 40)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Message: Identifiable {
    let id: String
}

let messages = [
    Message(id: "Affenpincher"),
    Message(id: "Akita"),
    Message(id: "Dane"),
    Message(id: "Bulldog"),
    Message(id: "Lab"),
    Message(id: "Husky"),
    Message(id: "Chiuaua"),
    Message(id: "Fila"),
    Message(id: "Rotweiller")
    
    
    /*
     Message(id: "1", breed: "Affenpincher"),
     Message(id: "2", breed: "Akita"),
     Message(id: "3", breed: "Dane"),
     Message(id: "4", breed: "Bulldog"),
     Message(id: "5", breed: "Lab"),
     Message(id: "6", breed: "Husky"),
     Message(id: "1", breed: "Chiuaua"),
     Message(id: "1", breed: "Fila"),
     Message(id: "1", breed: "Rotweiller")
     */
]
