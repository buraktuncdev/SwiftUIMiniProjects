//
//  ContentView.swift
//  HackerNewsSwiftUI
//
//  Created by Burak Tunc on 25.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("HACKER NEWS")
        }
            // perfom property with closure
            .onAppear {
                self.networkManager.fetchData()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


