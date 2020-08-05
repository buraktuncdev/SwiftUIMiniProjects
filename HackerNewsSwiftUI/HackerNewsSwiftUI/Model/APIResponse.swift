//
//  APIResponse.swift
//  HackerNewsSwiftUI
//
//  Created by Burak Tunc on 25.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


struct APIResponse: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
