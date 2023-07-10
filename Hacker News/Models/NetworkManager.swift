//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Avneet Sekhon on 2023-07-10.
//

import Foundation

class NetworkManager: ObservableObject {
    
    //Publish post to any interested/"subscribed" parties
    @Published var posts = [Post]()
    
    func urlData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            
                            //Published items should be uodated on main thread
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
