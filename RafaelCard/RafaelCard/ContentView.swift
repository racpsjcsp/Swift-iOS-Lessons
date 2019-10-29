//
//  ContentView.swift
//  RafaelCard
//
//  Created by Rafael Plinio on 29/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //ZStack allows to put things on top of each other
        ZStack {
            Color(red: 0.55, green: 0.48, blue: 0.90)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("rafael")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 160)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    
                Text("Rafael Plinio")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 40)) //change info.plist to work
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+55 (12) 98***-***3", imageName: "phone.fill")
                InfoView(text: "ra*****@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


