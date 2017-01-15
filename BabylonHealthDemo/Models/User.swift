//
//  User.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class User: Object {
  var address: Address!
  var company: Company!
  dynamic var email: String!
  dynamic var id: Int = 0
  dynamic var name: String!
  dynamic var phone: String!
  dynamic var username: String!
  dynamic var website: String!
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension User: Mappable {
  override static func primaryKey() -> String? {
    return "id"
  }
  
  func mapping(map: Map) {
    id        <- map["id"]
    name      <- map["name"]
    username  <- map["username"]
    email     <- map["email"]
    address   <- map["address"]
    phone     <- map["phone"]
    website   <- map["website"]
    company   <- map["company"]
  }
}
