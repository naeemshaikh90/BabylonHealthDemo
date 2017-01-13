//
//  Geo.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper

struct Geo {
  var lat: String!
  var lng: String!
}

extension Geo: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    lat <- map["lat"]
    lng <- map["lng"]
  }
}
