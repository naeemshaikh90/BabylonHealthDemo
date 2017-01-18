//
//  Address.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Address: Object {
  dynamic var geo: Geo!
  dynamic var city: String = ""
  dynamic var street: String = ""
  dynamic var suite: String = ""
  dynamic var zipcode: String = ""
  dynamic var timeSaved = Date()
  
  required convenience init(map: Map) {
    self.init()
  }
}

extension Address: Mappable {
  func mapping(map: Map) {
    city      <- map["city"]
    geo       <- map["geo"]
    street    <- map["street"]
    suite     <- map["suite"]
    zipcode   <- map["zipcode"]
    timeSaved <- map["timeSaved"]
  }
}
