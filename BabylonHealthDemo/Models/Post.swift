//
//  Post.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Post: Object {
  dynamic var userId: Int = 0
  dynamic var id: Int = 0
  dynamic var title: String = ""
  dynamic var body: String = ""
  dynamic var timeSaved = Date()
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension Post: Mappable {
  override static func primaryKey() -> String? {
    return "id"
  }
  
  func mapping(map: Map) {
    userId    <- map["userId"]
    id        <- map["id"]
    title     <- map["title"]
    body      <- map["body"]
    timeSaved <- map["timeSaved"]
  }
}
