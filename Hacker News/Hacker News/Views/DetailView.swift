//
//  DetailView.swift
//  Hacker News
//
//  Created by Rafael Plinio on 31/10/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}


