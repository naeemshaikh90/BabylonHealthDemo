//
//  Geo.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Geo: Object {
  dynamic var lat: String = ""
  dynamic var lng: String = ""
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension Geo: Mappable {
  func mapping(map: Map) {
    lat <- map["lat"]
    lng <- map["lng"]
  }
}
