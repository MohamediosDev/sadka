//
//  Azkar.swift
//
//  Created by Mohamed on 7/28/20
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Content: Codable {
        let text: String
        let count: String
        let fadl: String
        let source: String
       
    }
  
struct Azkar: Codable {
    let title: String
    let count: String
    let bookmark: String
     let content: [Content]
}
