//
//  details.swift
//  apiJson
//
//  Created by Harsh Tiwari on 19/04/23.
//

import Foundation

struct Details: Decodable {
    let page: Int
    let per_page: Int
    let total: Int
    let total_pages: Int
    let data: DataP
    let support: Support
    
}

struct DataP: Decodable {
    let id: Int
    let email: String
    let first_name: String
    let last_name: String
    let avatar: String
}

struct Support: Decodable {
    let url: String
    let text: String
}

