//
//  Address.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper

struct Address {
  var city: String!
  var geo: Geo!
  var street: String!
  var suite: String!
  var zipcode: String!
}

extension Address: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    
  }
}
