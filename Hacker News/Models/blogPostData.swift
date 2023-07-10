//
//  blogPostData.swift
//  Hacker News
//
//  Created by Avneet Sekhon on 2023-07-10.
//

import Foundation

//Create struct to represent all the properties we want from the blog posts
struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
