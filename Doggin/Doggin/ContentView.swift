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
    
    var breeds = ["Dane", "Husky", "Lab","Dane", "Husky", "Lab","Dane", "Husky", "Lab","Dane", "Husky", "Lab", "1", "2","3"]
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color(.systemTeal)
                    .edgesIgnoringSafeArea(.all)
                    //.navigationBarTitle(Text("Dogs"))
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

                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        
                        Text("Roll")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 3)
                                    .frame(width: 60, height: 60)
                                
                            )
                    }
                    
                    
                }
                    
            .padding()
            .navigationBarTitle(Text("Dogs"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


