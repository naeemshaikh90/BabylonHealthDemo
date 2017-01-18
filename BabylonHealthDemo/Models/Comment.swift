//
//  Comment.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 13/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Comment: Object {
  dynamic var body : String = ""
  dynamic var email : String = ""
  dynamic var id : Int = 0
  dynamic var name : String = ""
  dynamic var postId : Int = 0
  dynamic var timeSaved = Date()
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension Comment: Mappable {
  override static func primaryKey() -> String? {
    return "id"
  }
  
  func mapping(map: Map) {
    body      <- map["body"]
    email     <- map["email"]
    id        <- map["id"]
    name      <- map["name"]
    postId    <- map["postId"]
    timeSaved <- map["timeSaved"]
  }
}
