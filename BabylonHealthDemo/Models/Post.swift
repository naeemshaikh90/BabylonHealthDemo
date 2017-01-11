//
//  Post.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper

struct Post {
  var userId: Int = 0
  var id: Int = 0
  var title: String = ""
  var body: String = ""
}

extension Post: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    userId  <- map["userId"]
    id      <- map["id"]
    title   <- map["title"]
    body    <- map["body"]
  }
}
