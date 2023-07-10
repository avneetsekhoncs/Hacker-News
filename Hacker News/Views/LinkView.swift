//
//  LinkView.swift
//  Hacker News
//
//  Created by Avneet Sekhon on 2023-07-10.
//

import SwiftUI

struct LinkView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(url: "https://www.google.com")
    }
}
