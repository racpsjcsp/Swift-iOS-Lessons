//
//  ContentView.swift
//  Hacker News
//
//  Created by Rafael Plinio on 30/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post: Identifiable {
   let id: String  //must have because of the Identifiable protocol
   let title: String
    
}

let posts = [
    Post(id: "1", title: "hello"),
    Post(id: "2", title: "ola"),
    Post(id: "3", title: "hallo")
]
