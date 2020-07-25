//
//  NetworkManager.swift
//  HackerNewsSwiftUI
//
//  Created by Burak Tunc on 25.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: {data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(APIResponse.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                            
                        } catch {
                            print(error)
                        }
                        
                    }
                    
                }
            })
            task.resume()
        }
    }
    
}
