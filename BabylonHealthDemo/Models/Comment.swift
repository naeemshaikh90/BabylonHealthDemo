//
//  Comment.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 13/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper

struct Comment {
  var body : String!
  var email : String!
  var id : Int!
  var name : String!
  var postId : Int!
}

extension Comment: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    body    <- map["body"]
    email   <- map["email"]
    id      <- map["id"]
    name    <- map["name"]
    postId  <- map["postId"]
  }
}
