//
//  User.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper

struct User {
  var address: Address!
  var company: Company!
  var email: String!
  var id: Int!
  var name: String!
  var phone: String!
  var username: String!
  var website: String!
}

extension User: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    address   <- map[""]
    company   <- map[""]
    email     <- map[""]
    id        <- map[""]
    name      <- map[""]
    phone     <- map[""]
    username  <- map[""]
    website   <- map[""]
  }
}
