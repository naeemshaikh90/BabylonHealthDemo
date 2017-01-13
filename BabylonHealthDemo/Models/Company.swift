//
//  Company.swift
//  BabylonHealthDemo
//
//  Created by Naeem Shaikh on 11/01/17.
//  Copyright © 2017 Naeem Shaikh. All rights reserved.
//

import Foundation
import ObjectMapper

struct Company {
  var bs: String!
  var catchPhrase: String!
  var name: String!
}

extension Company: Mappable {
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    bs          <- map["bs"]
    catchPhrase <- map["catchPhrase"]
    name        <- map["name"]
  }
}
