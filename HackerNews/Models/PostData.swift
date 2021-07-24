//
//  PostData.swift
//  HackerNews
//
//  Created by Binaya on 25/07/2021.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
    
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    
}
