//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Rafael Plinio on 30/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //@State is a SwiftUI Property - it allows updating the variable, since Structs are immutable.
    @State var leftDice = 1
    @State var rightDice = 1
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    //because the var is changing, need to use @State
                    self.leftDice = Int.random(in: 1...6)
                    self.rightDice = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

