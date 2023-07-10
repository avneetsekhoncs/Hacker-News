//
//  ContentView.swift
//  Hacker News
//
//  Created by Avneet Sekhon on 2023-07-09.
//

import SwiftUI

struct ContentView: View {
    
    //The listener for the published properties in NetworManager.swift. This will be triggered whenever there is an update.
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: LinkView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("HACKER NEWS")
        }
        .onAppear {
            networkManager.urlData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello 1"),
//    Post(id: "2", title: "Hello 2"),
//    Post(id: "3", title: "Hello 3")
//]
