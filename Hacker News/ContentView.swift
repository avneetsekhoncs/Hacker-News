//
//  ContentView.swift
//  Hacker News
//
//  Created by Avneet Sekhon on 2023-07-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }.navigationTitle("HACKER NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello 1"),
    Post(id: "2", title: "Hello 2"),
    Post(id: "3", title: "Hello 3")
]
